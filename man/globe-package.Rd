\name{globe-package}
\alias{globe-package}
\alias{globe}
\docType{package}
\title{
  Simple 2D and 3D plots of Spheres including Earth
}
\description{
  A simple package to plot 2D and 3D views of a sphere.
  Options include drawing Earth with
  its major coastline, plotting the lines of longitude and latitude,
  and plotting points and curves at any locations on the sphere.
}
\details{
  This package provides very basic tools for plotting lines and points
  on a sphere. It does not require installation of any other libraries.
  
  The major functions are \code{\link{globeearth}} to plot
  a 3D view of a sphere (by default the Earth with its major coastline)
  and \code{\link{flatearth}} to plot a 2D projection of the sphere.

  Additional tools include \code{\link{globelines}} and
  \code{\link{globepoints}} to draw lines and points on the sphere.
}
\author{
Adrian Baddeley and Tom Lawrence
}
\examples{
   globeearth(eye=place("nedlands"), top=place("northpole"))
   flatearth(projection="atlas")
   flatearth(projection="cylindrical")
}
\keyword{spatial}

