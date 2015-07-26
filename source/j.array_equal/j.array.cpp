/** @file
 *
 * @ingroup implementationMaxExternalsAudioGraph
 *
 * @brief j.array= : wraps the #TTAudioObjectBaseArray class as an AudioGraph array external for Jamoma AudioGraph.
 *
 * @details
 *
 * @authors Nils Peters, Trond Lossius
 *
 * @copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "MaxAudioGraph.h"


int C74_EXPORT main(void)
{
	TTAudioGraphInit();
	wrapAsMaxAudioGraph(TT("array"), "j.array=", NULL);
	return wrapAsMaxAudioGraph(TT("array"), "array=", NULL);
}
