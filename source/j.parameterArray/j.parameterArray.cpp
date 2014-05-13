/** @file
 *
 * @ingroup implementationMaxExternals
 *
 * @brief j.parameterArray / j.messageArray / j.returnArray : An array of nodes in a model
 *
 * @details
 *
 * @authors Théo de la Hogue, Trond Lossius
 *
 * @copyright © 2010 by Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModularClassWrapperMax.h"

#define data_out 0
#define index_out 1
#define	dump_out 2


// This is used to store extra data
typedef struct extra {
	
	TTBoolean			changingAddress;	// a flag to protect from succession of address changes
	TTBoolean			firstArray;			// a flag to know if it is the first instanciation (do not init data)
    TTListPtr           objectsSorted;      // all objects sorted by index

} t_extra;
#define EXTRA ((t_extra*)x->extra)


// Definitions
void		WrapTTDataClass(WrappedClassPtr c);
void		WrappedDataClass_new(TTPtr self, long argc, t_atom *argv);
void		WrappedDataClass_free(TTPtr self);

void		data_assist(TTPtr self, TTPtr b, long msg, long arg, char *dst);

void		data_new_address(TTPtr self, t_symbol *msg);
void		data_array_create(TTPtr self, TTObject& returnedData, TTSymbol service, TTUInt32 index);
void		data_address(TTPtr self, t_symbol *name);

void		data_array_return_value(const TTValue& baton, const TTValue& v);
void		data_edit_array(TTPtr self, TTValue& array);

void		WrappedDataClass_anything(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void		data_bang(TTPtr self);
void		data_int(TTPtr self, long value);
void		data_float(TTPtr self, double value);
void		data_list(TTPtr self, t_symbol *msg, long argc, const t_atom *argv);

void		data_array(TTPtr self, t_symbol *msg, long argc, const t_atom *argv);

void		data_inc(TTPtr self, t_symbol *msg, long argc, const t_atom *argv);
void		data_dec(TTPtr self, t_symbol *msg, long argc, const t_atom *argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDataClass;
	spec->_new = &WrappedDataClass_new;
	spec->_free = &WrappedDataClass_free;
	spec->_any = &WrappedDataClass_anything;
	
#ifdef JMOD_MESSAGE
	return wrapTTModularClassAsMaxClass(kTTSym_Data, "j.messageArray", NULL, spec);
#endif
	
#ifdef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(kTTSym_Data, "j.returnArray", NULL, spec);
#endif
	
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(kTTSym_Data, "j.parameterArray", NULL, spec);
#endif
#endif
}

void WrapTTDataClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)data_assist,						"assist",				A_CANT, 0L);
		
	class_addmethod(c->maxClass, (method)data_bang,							"bang",					0L);
	class_addmethod(c->maxClass, (method)data_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)data_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)data_list,							"list",					A_GIMME, 0);
    
    class_addmethod(c->maxClass, (method)data_array,						"array",				A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)data_inc,							"+",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)data_dec,							"-",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)data_address,						"address",				A_SYM,0);
}

void WrappedDataClass_new(TTPtr self, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_symbol					*relativeAddress;
	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	TTValue						none;
	
	// check address argument
	relativeAddress = _sym_nothing;
	if (attrstart && argv)
		if (atom_gettype(argv) == A_SYM)
			relativeAddress = atom_getsym(argv);
	
	if (relativeAddress == _sym_nothing) {
		object_error((t_object*)x, "needs a name as first argument");
		x->extra = NULL;
		return;
	}
	
	// add an inlet for the index
	x->inlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->inlets[0] = proxy_new(x, 1, &x->index);	// use this member to store index (because index is used for data array)
	
	// Make outlets (before attr_args_process)
	/////////////////////////////////////////////////////////////////////////////////
	
	// Don't create outlets during dynamic changes
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[index_out] = outlet_new(x, NULL);					// long outlet to output data index
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	x->arraySize = 0;
	x->arrayIndex = 0;
	x->arrayAddress = kTTAdrsEmpty;
	x->arrayArgs = none;
	x->arrayAttrFormat = gensym("single");
	
	// Prepare extra data for parameters and messages
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	
	EXTRA->changingAddress = NO;
	EXTRA->firstArray = YES;
    EXTRA->objectsSorted = new TTList();
	
	// handle args
	if (argc && argv) {
		
		// set the external attribute
		attr_args_process(x, argc, argv);
		
		// keep args to set the wrapped object attributes
		if (argc > 1)
			jamoma_ttvalue_from_Atom(x->arrayArgs, _sym_list, argc--, argv++);
	}
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((t_object*)x, (method)data_new_address, relativeAddress, 0, NULL);
}

void WrappedDataClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    
    if (EXTRA) {
        
        delete EXTRA->objectsSorted;
        free(EXTRA);
    }
}

void data_new_address(TTPtr self, t_symbol *relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	long		argc = 0; 
	t_atom		*argv = NULL;
	TTUInt32	number;
	TTUInt32	i;
	TTAddress	newAddress = relativeAddress->s_name;
    TTAddress   returnedAddress;
    TTNodePtr   returnedNode = NULL;
    TTNodePtr   returnedContextNode = NULL;
	t_symbol    *instanceAddress;
	TTObject    anObject;
	TTObject    aSubscriber;
	TTValue		v;
    
    x->useInternals = YES;
    x->internals->clear();
    x->internals->setThreadProtection(YES);
    x->cursor = kTTSymEmpty;
    x->arrayAddress = newAddress;
    
    if (x->arrayAddress.getType() == kAddressRelative) {
        
        number = jamoma_parse_bracket(relativeAddress, x->arrayFormatInteger, x->arrayFormatString);
        
        // don't resize to 0
        if (number && number <= MAX_ARRAY_SIZE) {
            
            // Starts iteration on internals
            x->iterateInternals = YES;
            
            x->arraySize = number;
            
            EXTRA->objectsSorted->clear();
            
            for (i = 1; i <= x->arraySize; i++) {
                
                jamoma_edit_numeric_instance(x->arrayFormatInteger, &instanceAddress, i);
                
                // create a data
#ifdef JMOD_MESSAGE
                data_array_create(self, anObject, kTTSym_message, i);
#endif
                
#if JMOD_RETURN
                data_array_create(self, anObject, kTTSym_return, i);
#endif
                
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
                data_array_create(self, anObject, kTTSym_parameter, i);
#endif
#endif

                if (!jamoma_subscriber_create((t_object*)x, anObject, TTAddress(instanceAddress->s_name),  aSubscriber, returnedAddress, &returnedNode, &returnedContextNode)) {
                    
                    if (aSubscriber.valid()) {
                        
                        // append the data to the internals table
                        v = TTValue(anObject);
                        v.append(TTSymbol(instanceAddress->s_name));
                        v.append(aSubscriber);
                        x->internals->append(TTSymbol(instanceAddress->s_name), v);
                        
                        // inverse objects order for iteration purpose (see in data_array_return_value : array mode)
                        EXTRA->objectsSorted->insert(0, anObject);
                    }
                }
            }
            
            // Ends iteration on internals
            x->iterateInternals = NO;
            
            // handle args
            jamoma_ttvalue_to_Atom(x->arrayArgs, &argc, &argv);
            if (argc && argv)
                attr_args_process(x, argc, argv);
            
            // select all datas
            wrappedModularClass_ArraySelect(self, gensym("*"), 0, NULL);
            
#ifndef JMOD_MESSAGE
            // init all datas created dynamically
            if (!EXTRA->firstArray)
                defer((t_object*)x, (method)wrappedModularClass_anything, _sym_init, 0, NULL);
#endif
        }
        else if (number > MAX_ARRAY_SIZE)
            object_error((t_object*)x, "the size is greater than the maximum array size (%d)", MAX_ARRAY_SIZE);
        
        EXTRA->firstArray = NO;
    }
    else
        object_error((t_object*)x, "can't register because %s is not a relative address", relativeAddress->s_name);
}

void data_array_create(TTPtr self, TTObject& returnedData, TTSymbol service, TTUInt32 index)
{
	TTValue	baton;

	returnedData = TTObject(kTTSym_Data, service);
    
    baton = TTValue(self, index);
	returnedData.set(kTTSym_baton, baton);
	returnedData.set(kTTSym_function, TTPtr(&data_array_return_value));
}

void data_address(TTPtr self, t_symbol *address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// Avoid succession of address changes
    if (!EXTRA->changingAddress) {
        
        EXTRA->changingAddress = YES;
        
        // filter repetitions
        if (!(x->arrayAddress == TTAddress(address->s_name))) {
            
            if (!x->iterateInternals) {
                
                // unregister internals
                wrappedModularClass_unregister(x);
                
                x->arraySize = 0;

                // rebuild internals
                defer(self,(method)data_new_address, address, 0, NULL);
                
                // for array mode : output the array once afterward
                if (x->arrayAttrFormat == gensym("array")) {
                    
                    TTValue     array;
                    t_symbol	*msg;
                    long		argc = 0;
                    t_atom		*argv = NULL;
                    TTBoolean	shifted = NO;
                    
                    data_edit_array(self, array);
                    
                    jamoma_ttvalue_to_typed_Atom(array, &msg, &argc, &argv, shifted);
                    
                    // avoid blank before data
                    if (msg == _sym_nothing)
                        outlet_atoms(x->outlets[data_out], argc, argv);
                    else
                        outlet_anything(x->outlets[data_out], msg, argc, argv);
                    
                    if (shifted)
                        argv--;
                    sysmem_freeptr(argv);
                }
            }
        }
        
        EXTRA->changingAddress = NO;
        return;
	}
	
    object_error((t_object*)x, "can't change to %s address. Please defer low", address->s_name);
}

// Method for Assistance Messages
void data_assist(TTPtr self, TTPtr b, long msg, long arg, char *dst)
{
	if (msg == 1) {					// Inlet
        switch(arg) {
			case 0 :
				strcpy(dst, "set the value of the selected instance(s)");
				break;
			case 1 :
				strcpy(dst, "index (use * to bind all instances)");
				break;
		}
    }
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "direct: values");
				break;
			case index_out:
				strcpy(dst, "index");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void data_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (!x->internals->isEmpty()) {
		data_list(self, _sym_bang, 0, NULL);
	}
	else
		object_error((t_object*)x, "bang : the array is empty");
}

void data_int(TTPtr self, long value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;
	
	if (proxy_getinlet((t_object*)x)) {
		atom_setlong(&a, value);
		wrappedModularClass_ArraySelect(self, _sym_nothing, 1, &a);
	}
	else {
		if (!x->internals->isEmpty()) {
			atom_setlong(&a, value);
			data_list(self, _sym_int, 1, &a);
		}
		else
			object_error((t_object*)x, "int : the array is empty");
	}
}

void data_float(TTPtr self, double value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;
	
	if (!x->internals->isEmpty()) {
		atom_setfloat(&a, value);
		data_list(self, _sym_float, 1, &a);
	}
	else
		object_error((t_object*)x, "float : the array is empty");
}

void data_list(TTPtr self, t_symbol *msg, long argc, const t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTObject o;
	
	if (!x->internals->isEmpty()) {
		
		// send to each data
		if (x->arrayIndex == 0) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (TTUInt32 i = 0; i < keys.size(); i++) {
					x->cursor = keys[i];
                    o = selectedObject;
					jamoma_data_command(o, msg, argc, argv);
				}
			}
			x->cursor = kTTSymEmpty;
		}
		else {
            o = selectedObject;
			jamoma_data_command(o, msg, argc, argv);
        }
		
	}
	else
		object_error((t_object*)x, "list : the array is empty");
}

void WrappedDataClass_anything(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTObject o;
	
	if (proxy_getinlet((t_object*)x)) {
		wrappedModularClass_ArraySelect(self, msg, argc, argv);
	}
	else {
		
		// send to each data
		if (x->arrayIndex == 0) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (TTUInt32 i=0; i<keys.size(); i++) {
					x->cursor = keys[i];
                    o = selectedObject;
					jamoma_data_command(o, msg, argc, argv);
				}
				x->cursor = kTTSymEmpty;
			}
		}
		else {
            o = selectedObject;
			jamoma_data_command(o, msg, argc, argv);
        }
	}
}

void data_array(TTPtr self, t_symbol *msg, long argc, const t_atom *argv)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTInt32     d, i;
    t_symbol	*instanceAddress;
    TTSymbol    memoCursor;
    
	if (!x->internals->isEmpty()) {
		
		// is the incoming data size is a multiple of the array size ?
        d = argc / x->arraySize;
        if ((d * x->arraySize) == argc) {
            
            memoCursor = x->cursor;
            
            for (i = 1; i <= x->arraySize; i++) {
                
                jamoma_edit_numeric_instance(x->arrayFormatInteger, &instanceAddress, i);
                x->cursor = TTSymbol(instanceAddress->s_name);
                TTObject o = selectedObject;
                jamoma_data_command(o, _sym_nothing, d, argv+((i-1)*d));
            }
            
            x->cursor = memoCursor;
        }
        else
            object_error((t_object*)x, "array : the array message size have to be a multiple of the array size");
		
	}
	else
		object_error((t_object*)x, "array : the array is empty");
}

void data_inc(TTPtr self, t_symbol *msg, long argc, const t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v, none;
	
	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TTSymbol("Inc"), v, none);
}

void data_dec(TTPtr self, t_symbol *msg, long argc, const t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v, none;
	
	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TTSymbol("Dec"), v, none);
}

void data_array_return_value(const TTValue& baton, const TTValue& v)
{
	WrappedModularInstancePtr	x;
	TTValue                     array;
	t_symbol					*msg, *iAdrs;
	TTUInt32					i;
	long						argc = 0;
	t_atom						*argv = NULL;
	TTBoolean					shifted = NO;

	
	// unpack baton (a t_object *and the index of the value)
	x = WrappedModularInstancePtr((TTPtr)baton[0]);
	i = baton[1];
	
	// output index
	if (x->arrayIndex == 0) {
		jamoma_edit_numeric_instance(x->arrayFormatInteger, &iAdrs, i);
		x->cursor = TTSymbol(iAdrs->s_name);
	}
	
	outlet_int(x->outlets[index_out], i);
	
	// in array output mode 
	// edit a value containing all values
	if (x->arrayAttrFormat == gensym("array")) {
        
        // don't output array when changing address
        if (EXTRA->changingAddress)
            return;
        
        data_edit_array(x, array);
		
		jamoma_ttvalue_to_typed_Atom(array, &msg, &argc, &argv, shifted);
	}
	else
		// output single value
		jamoma_ttvalue_to_typed_Atom(v, &msg, &argc, &argv, shifted);
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}

void data_edit_array(TTPtr self, TTValue& array)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
    TTValue						keys, object, grab, t;
    TTSymbol                    key, type;
	TTObject                    aData;
    
    // get each value from the data object itself
    for (EXTRA->objectsSorted->begin();
         EXTRA->objectsSorted->end();
         EXTRA->objectsSorted->next()) {
        
        aData = EXTRA->objectsSorted->current()[0];
        
        // try to get the value or the value default
        if (aData.get(kTTSym_value, grab))
            aData.get(kTTSym_valueDefault, grab);
        
        // if there is no value
        if (grab.size() == 0) {
            
            aData.get(kTTSym_type, t);
            
            type = t[0];
            
            if (type == kTTSym_string)
                grab = kTTSym_none;
            else
                grab = 0;
        }
        
        array.prepend(grab);
    }
}

t_max_err data_get_format(TTPtr self, TTPtr attr, long *ac, t_atom **av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (t_atom*)getbytes(sizeof(t_atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setsym(*av, x->arrayAttrFormat);
	
	return MAX_ERR_NONE;
}

t_max_err data_set_format(TTPtr self, TTPtr attr, long ac, const t_atom *av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		x->arrayAttrFormat = atom_getsym(av);
	} else {
		// no args, set to single
		x->arrayAttrFormat = gensym("single");
	}
	return MAX_ERR_NONE;
}