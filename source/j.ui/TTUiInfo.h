/** @file
 *
 * @ingroup maxLibrary
 *
 * @brief A base class for j.ui info
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_UI_INFO_H__
#define __TT_UI_INFO_H__

#include "TTModularClassWrapperMax.h"
#include "j.ui.h"

typedef t_ui* t_uiPtr;

/** A base class for j.ui info
 */
class TTMODULAR_EXPORT TTUiInfo : public TTDataObjectBase
{
	TTCLASS_SETUP(TTUiInfo)
    
    TTValue             mSize;                  ///< ATTRIBUTE : the size of the j.ui
   
    t_uiPtr             mObject;                ///< cache the j.ui object
    
public:
    
    /** Attribute accessor.
     @param     newValue    a new horizontal and a vertical size value
     @return	TTErr		kTTErrNone
     */
    TTErr setSize(const TTValue& newValue);
    
    /** Attribute accessor.
     @param     value    current horizontal and a vertical size value
     @return	TTErr		kTTErrNone
     */
    TTErr getSize(TTValue& value);
};

typedef TTUiInfo* TTUiInfoPtr;


#endif // __TT_UI_INFO_H__
