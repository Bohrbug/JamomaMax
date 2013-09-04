/* 
 *	j.model preset features
 *	External object functions
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "j.model.h"

void model_preset_subscribe(TTPtr self, TTAddress modelAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, a, args;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
    TTTextHandlerPtr			aTextHandler;
    TTAddress                   presetAddress;
    TTNodePtr                   aNode;
    TTBoolean                   newInstanceCreated;
    
    presetAddress = modelAddress.appendAddress(TTAddress("preset"));
    
    if (!JamomaDirectory->TTNodeCreate(presetAddress, EXTRA->presetManager, x->patcherPtr,  &aNode, &newInstanceCreated)) {
	
        EXTRA->presetManager->setAttributeValue(kTTSym_address, modelAddress);
        
        // create internal TTXmlHandler
        aXmlHandler = NULL;
        TTObjectBaseInstantiate(kTTSym_XmlHandler, TTObjectBaseHandle(&aXmlHandler), args);
        v = TTValue(aXmlHandler);
        x->internals->append(kTTSym_XmlHandler, v);
        v = TTValue(EXTRA->presetManager);
        aXmlHandler->setAttributeValue(kTTSym_object, v);
        
        // create internal TTTextHandler
        aTextHandler = NULL;
        TTObjectBaseInstantiate(kTTSym_TextHandler, TTObjectBaseHandle(&aTextHandler), args);
        v = TTValue(aTextHandler);
        x->internals->append(kTTSym_TextHandler, v);
        
        // if desired, load default modelClass.patcherContext.xml file preset
        if (EXTRA->attr_load_default)
            defer_low(x, (method)model_preset_default, 0, 0, 0L);
    }
}

/*
void model_preset_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// avoid blank before line
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[line_out], argc, argv);
	else
		outlet_anything(x->outlets[line_out], msg, argc, argv);
}
*/

void model_preset_return_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[dump_out], gensym("names"), argc, argv);
}

void model_preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)model_preset_doread, msg, argc, argv);
}

void model_preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			o, v;
	TTSymbol		fullpath;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTErr			tterr;
	
	if (EXTRA->presetManager) {
		
		fullpath = jamoma_file_read((ObjectPtr)x, argc, argv, 'TEXT');
		v.append(fullpath);
		
		tterr = x->internals->lookup(kTTSym_XmlHandler, o);
		
		if (!tterr) {
			
			aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)o[0]);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(kTTSym_Read, v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_read, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
}

void model_preset_read_again(TTPtr self)
{
	defer(self, (method)model_preset_doread_again, NULL, 0, NULL);
}

void model_preset_doread_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(kTTSym_XmlHandler, o);
	
	if (!tterr) {
		
		aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)o[0]);
		
		critical_enter(0);
		tterr = aXmlHandler->sendMessage(kTTSym_ReadAgain);
		critical_exit(0);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_read, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
}

void model_preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)model_preset_dowrite, msg, argc, argv);
}

void model_preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filename[MAX_FILENAME_CHARS];
	TTSymbol		fullpath;
	TTValue			o, v;
	TTXmlHandlerPtr	aXmlHandler;
	TTErr			tterr;
	
	// stop filewatcher
	if (EXTRA->filewatcher)
		filewatcher_stop(EXTRA->filewatcher);
	
	if (EXTRA->presetManager) {
		
		// Default XML File Name
		snprintf(filename, MAX_FILENAME_CHARS, "%s.%s.xml", x->patcherClass.c_str(), x->patcherContext.c_str());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(kTTSym_XmlHandler, o);
		
		if (!tterr) {
			aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)o[0]);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(kTTSym_Write, v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_write, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
	
	// start filewatcher
	if (EXTRA->filewatcher)
		filewatcher_start(EXTRA->filewatcher);
}

void model_preset_write_again(TTPtr self)
{
	defer(self, (method)model_preset_dowrite_again, NULL, 0, NULL);
}

void model_preset_dowrite_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(kTTSym_XmlHandler, o);
	
	if (!tterr) {
		
		aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)o[0]);
		
		critical_enter(0);
		tterr = aXmlHandler->sendMessage(kTTSym_WriteAgain);
		critical_exit(0);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_write, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
}

void model_preset_default(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	short		outvol;
	t_fourcc	outtype, filetype = 'TEXT';
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char		posixpath[MAX_PATH_CHARS];
	t_atom		a;
	SymbolPtr	xmlfile;

	if (x->patcherClass != kTTSymEmpty) {
		
		if (x->patcherContext == kTTSym_model)
			jamoma_edit_filename(*ModelPresetFormat, x->patcherClass, &xmlfile);
		
		else if (x->patcherContext == kTTSym_view)
			jamoma_edit_filename(*ViewPresetFormat, x->patcherClass, &xmlfile);
		else
			return object_error((ObjectPtr)x, "preset_default : can't get the context of the patcher");
		
		if (locatefile_extended((char*)xmlfile->s_name, &outvol, &outtype, &filetype, 1)) {
			//object_warn((ObjectPtr)x, "preset_default : can't find %s file in the Max search path", xmlfile.data());
			return;
		}
		
		path_topathname(outvol, (char*)xmlfile->s_name, fullpath);
		path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
		
		atom_setsym(&a, gensym(posixpath));
		defer_low(self, (method)model_preset_doread, gensym("read"), 1, &a);
		
		// recall the default preset if exists
        atom_setsym(&a, gensym("default"));
		defer_low((ObjectPtr)x, (method)model_preset_dorecall, NULL, 1, &a);
		
		// replace filewatcher
		if (EXTRA->filewatcher) {
			filewatcher_stop(EXTRA->filewatcher);
			object_free(EXTRA->filewatcher);
		}
		
		EXTRA->filewatcher = filewatcher_new((ObjectPtr)x, outvol, (char*)xmlfile->s_name);
		filewatcher_start(EXTRA->filewatcher);
	}
	else
		object_error((ObjectPtr)x, "preset_default : can't get the class of the patcher");
}

void model_preset_filechanged(TTPtr self, char *filename, short path)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char		posixpath[MAX_PATH_CHARS];
	TTValue		v;
	TTSymbol    current;
	Atom		a;
	
	// get current preset
	EXTRA->presetManager->getAttributeValue(TTSymbol("current"), v);
	
	path_topathname(path, filename, fullpath);
	path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
	
	atom_setsym(&a, gensym(posixpath));
	defer_low(self, (method)model_preset_doread, gensym("read"), 1, &a);
	
	// try to recall last current preset
	current = v[0];
	atom_setsym(&a, gensym((char*)current.c_str()));
	defer_low((ObjectPtr)x, (method)model_preset_dorecall, NULL, 1, &a);
}

void model_preset_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;

	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			v = TTValue(TTSymbol(atom_getsym(argv)->s_name));
	
	// recall the preset
	EXTRA->presetManager->sendMessage(kTTSym_Recall, v, kTTValNONE);
}

void model_preset_edit(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTString			*buffer;
	char				title[MAX_FILENAME_CHARS];
	TTTextHandlerPtr	aTextHandler = NULL;
	TTHashPtr			allPresets;
	TTValue				v, o, args;
	TTSymbol			name;
    Atom                a;
	TTErr				tterr;
	
	// choose object to edit : default the cuelist
	EXTRA->toEdit = EXTRA->presetManager;
	EXTRA->presetName = kTTSymEmpty;
	
	if (argc && argv) {
		
		if (atom_gettype(argv) == A_LONG) {
			
			// get presets names
			EXTRA->presetManager->getAttributeValue(TTSymbol("names"), v);
			
			if (atom_getlong(argv) <= v.size())
				name = v[atom_getlong(argv)-1];
			
			else {
				object_error((ObjectPtr)x, "%d does'nt exist", atom_getlong(argv));
				return;
			}
		}
		else if (atom_gettype(argv) == A_SYM)
			name = TTSymbol(atom_getsym(argv)->s_name);
		
		if (name != kTTSymEmpty) {
			
			// get preset object table
			EXTRA->presetManager->getAttributeValue(TTSymbol("presets"), v);
			allPresets = TTHashPtr((TTPtr)v[0]);
			
			if (allPresets) {
				
				// get cue to edit
				if (!allPresets->lookup(name, v)) {
					
					// edit a preset
					EXTRA->toEdit = v[0];
					EXTRA->presetName = name;
				}
				else {
					object_error((ObjectPtr)x, "%s does'nt exist", atom_getsym(argv)->s_name);
					return;
				}
			}
		}
	}
	
	// only one editor can be open in the same time
	if (!EXTRA->textEditor) {
	
		EXTRA->textEditor = (t_object*)object_new(_sym_nobox, _sym_jed, x, 0);
		
		buffer = new TTString();
		
		// get the buffer handler
		tterr = x->internals->lookup(kTTSym_TextHandler, o);
		
		if (!tterr) {
			
			aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)o[0]);
			
			critical_enter(0);
			o = TTValue(EXTRA->toEdit);
			aTextHandler->setAttributeValue(kTTSym_object, o);
			args = TTValue((TTPtr)buffer);
			tterr = aTextHandler->sendMessage(kTTSym_Write, args, kTTValNONE);
			critical_exit(0);
		}
		
		// pass the buffer to the editor
		object_method(EXTRA->textEditor, _sym_settext, buffer->c_str(), _sym_utf_8);
		object_attr_setchar(EXTRA->textEditor, gensym("scratch"), 1);
		
		snprintf(title, MAX_FILENAME_CHARS, "%s preset editor", x->patcherClass.c_str());
		object_attr_setsym(EXTRA->textEditor, _sym_title, gensym(title));
        
        // output a flag
        atom_setsym(&a, gensym("opened"));
        object_obex_dumpout(self, gensym("editor"), 1, &a);
		
		buffer->clear();
		delete buffer;
		buffer = NULL;
	}
}

void model_preset_edclose(TTPtr self, char **text, long size)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	EXTRA->text = new TTString(*text);
	EXTRA->textEditor = NULL;
	
	defer_low((ObjectPtr)x, (method)model_preset_doedit, NULL, 0, NULL);
}

void model_preset_doedit(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTTextHandlerPtr	aTextHandler = NULL;
	TTValue				o, args;
    Atom                a;
	TTErr				tterr;
	
	// get the buffer handler
	tterr = x->internals->lookup(kTTSym_TextHandler, o);
	
	if (!tterr) {
		
		aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)o[0]);
		
		critical_enter(0);
		args = TTValue((TTPtr)EXTRA->text);
		tterr = aTextHandler->sendMessage(kTTSym_Read, args, kTTValNONE);
		critical_exit(0);
		
        // output a flag
        atom_setsym(&a, gensym("closed"));
        object_obex_dumpout(self, gensym("editor"), 1, &a);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_read, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
	
	delete EXTRA->text;
	EXTRA->text = NULL;
	EXTRA->textEditor = NULL;
	EXTRA->toEdit = EXTRA->presetManager;
	EXTRA->presetName = kTTSymEmpty;
}

t_max_err model_preset_set_load_default(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		EXTRA->attr_load_default = atom_getlong(av) == 1;
	}
	else
		EXTRA->attr_load_default = true; // default true
	
	return MAX_ERR_NONE;
}

t_max_err model_preset_get_load_default(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setlong(*av, EXTRA->attr_load_default == 1);
	
	return MAX_ERR_NONE;
}