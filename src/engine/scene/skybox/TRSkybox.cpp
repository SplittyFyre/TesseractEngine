#include "TR/TRSkybox.h"
#include "TR/TRLoader.h"

TRSkyBox::TRSkyBox(float size) : size(size), 
    model(TRLoader::loadToModel(  {   
		    -size,  size, -size,
		    -size, -size, -size,
		   	 size, -size, -size,
		     size, -size, -size,
		     size,  size, -size,
		    -size,  size, -size,
	
		    -size, -size,  size,
		    -size, -size, -size,
		    -size,  size, -size,
		    -size,  size, -size,
		    -size,  size,  size,
		    -size, -size,  size,
	
		     size, -size, -size,
		     size, -size,  size,
		     size,  size,  size,
		     size,  size,  size,
		     size,  size, -size,
		     size, -size, -size,
	
		    -size, -size,  size,
		    -size,  size,  size,
		     size,  size,  size,
		     size,  size,  size,
		     size, -size,  size,
		    -size, -size,  size,
	
		    -size,  size, -size,
		     size,  size, -size,
		     size,  size,  size,
		     size,  size,  size,
		    -size,  size,  size,
		    -size,  size, -size,
	
		    -size, -size, -size,
		    -size, -size,  size,
		     size, -size, -size,
		     size, -size, -size,
		    -size, -size,  size,
		     size, -size,  size
		}, 3))
{
    
	
}
