/** @file
 * @ingroup implementationMaxModels
 *
 * @brief noise~.model: Wraps the #TTNoise class as a Jamoma model in the form of a C++ external
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2013, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"
#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_obex.h"					// Max Object Extensions (attributes) Header

#include "TTModel.h"

// Data Structure for this object
typedef struct _noisemod {
	t_pxobject 			obj;
	TTModel             *model;
	TTAudioObject       noise;
	TTObject            signalIn;
	TTObject            signalOut;
    TTObject            out;
} t_noisemod;


// Prototypes for methods
void*	noisemod_new(t_symbol *s, long argc, t_atom *argv);
void	noisemod_free(t_noisemod *x);
void	noisemod_dsp64(t_noisemod *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags);
void	noisemod_assist(t_noisemod *x, void *b, long m, long a, char *s);
void	noisemod_parameter_mode_callback(const TTValue& baton, const TTValue& v);


// Globals
static t_class*	s_noisemod_class;


/************************************************************************************/
// Define our class

int C74_EXPORT main(void)
{
	t_class *c = class_new("noise~.model", (method)noisemod_new, (method)noisemod_free, sizeof(t_noisemod), (method)0L, A_GIMME, 0);
	
	TTDSPInit();

	class_addmethod(c, (method)noisemod_dsp64,		"dsp64", A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, "dumpout", A_CANT,0);
    class_addmethod(c, (method)noisemod_assist, 	"assist", A_CANT, 0L);			
	class_dspinit(c);

	class_register(CLASS_BOX, c);
	s_noisemod_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void* noisemod_new(t_symbol* s, long argc, t_atom* argv)
{
	t_noisemod*	x			= (t_noisemod*)object_alloc(s_noisemod_class);
	long		attrstart	= attr_args_offset(argc, argv);
	TTString	name;
    TTPtr       context;
	
    // Edit the name of our noise model using the first argument if exists
	if (attrstart) {
		if (atom_getsym(argv)->s_name[0] == '/')
			name += atom_getsym(argv)->s_name + 1;
		else
			name += atom_getsym(argv)->s_name;
	}
    // Else call it "noise"
	else
		name += s->s_name;
    
    // Get the patcher as context pointer
	object_obex_lookup(x, gensym("#P"), (t_object**)&context);
	
	// Create the actual DSP object
	x->noise = TTObject("noise", 2);
	assert(x->noise.valid());
	x->signalOut = TTObject(kTTSym_audiosignal, 2);
	x->signalIn = TTObject(kTTSym_audiosignal, 2);

	// Create the "model" container
	x->model = new TTModel(name, context);
	
	// Add things to our model
	x->model->createParameter("mode", (TTFunctionWithBatonAndValue)noisemod_parameter_mode_callback, x, "string", "set the mode of the noise generator",  TTSymbol("white"));
	x->model->createOutput("", x->out);
	x->model->createPresetManager();
		
	// Initialize the module (set default values, etc)
	x->model->init();
	
	// Do some final Max-specific stuff
	dsp_setup((t_pxobject*)x, 1);
	x->obj.z_misc = Z_NO_INPLACE;
	outlet_new((t_pxobject*)x, "signal");
	attr_args_process(x, argc, argv);
	return x;
}


// Destroy
void noisemod_free(t_noisemod *x)
{
	dsp_free((t_pxobject *)x);
	
	delete x->model;
}


/************************************************************************************/

void noisemod_assist(t_noisemod *x, void *b, long msg, long arg, char *dst)
{
}


// Callback we receive when the parameter value changes
void noisemod_parameter_mode_callback(const TTValue& baton, const TTValue& v)
{
	t_noisemod *x = (t_noisemod*)TTPtr(baton[0]);
	x->noise.set("mode", v);
}


void noisemod_perform64(t_noisemod *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
	// actually process the audio
	TTAudioObjectBasePtr(x->noise.instance())->process(TTAudioSignalPtr(x->signalOut.instance()));
	
	// we re-use the memory from ins[], which is safe because we set Z_NO_INPLACE in the object constructor
	TTAudioSignalPtr(x->signalOut.instance())->getVectorCopy(0, sampleframes, ins[0]);
	
	TTOutputAudioPtr(x->out.instance())->process(ins[0], outs[0], sampleframes);
}


void noisemod_dsp64(t_noisemod *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	x->signalOut.set(kTTSym_numChannels, 1);
	x->signalOut.set(kTTSym_vectorSize, (TTUInt16)maxvectorsize);;
	x->signalOut.send(kTTSym_alloc);
	
	x->noise.set(kTTSym_sampleRate, samplerate);
	object_method(dsp64, gensym("dsp_add64"), x, noisemod_perform64, 0, NULL);

	TTOutputAudioPtr(x->out.instance())->setupAudioSignals(maxvectorsize, samplerate);
}
