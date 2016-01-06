\name{globe-package}
\alias{globe-package}
\alias{globe}
\docType{package}
\title{
Plotting and analysis of spatial data on planet Earth
}
\description{
This package allows a user to plot locations of points on an image of the planet Earth, either using a image of the globe, or one of two flat projections.  Simple tools to allow the plotting of lines and longitude and latitude, and for the globe image allowing its rotation, are also provided.
}
\details{
\tabular{ll}{
Package: \tab globe\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-06-10\cr
LazyLoad: \tab yes\cr
}
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

