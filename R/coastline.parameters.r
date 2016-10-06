
coastline.parameters = function( DS, p=NULL, resolution="canada.east.highres" ) {
  p$project.name = DS
  p$project.root = project.datadirectory( p$project.name )
  p$libs = bioLibrary( "bio.spacetime", "bio.utilities", "bio.bathymetry", "bio.coastline", "bio.polygons" )
  p$libs = c(p$libs, RLibrary( "rgdal", "maps", "mapdata", "maptools", "geosphere", "sp", "raster", "rgeos" ) )

  # default (= only supported resolution of 0.5 km discretization)  .. do NOT change
  p = spacetime_parameters( type=resolution, p=p )
  return(p)
}


