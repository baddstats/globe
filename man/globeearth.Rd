\name{globeearth}
\alias{globeearth}
\title{
  Plot Earth as 3D globe
}
\description{
Plots the Earth as a globe, seen from a specified viewpoint, with a map of the major coastline.
}
\usage{
globeearth(gdata, runlen, eye, top)
}
\arguments{
  \item{gdata}{
   Two-column matrix of latitude, longitude coordinates of 
   coastline vertices.
}
  \item{runlen}{
   Integer vector giving the number of vertices in each connected polygon in the coastline.
}
  \item{eye}{
Viewpoint. A vector of length 3 determining a position in space.
}
  \item{top}{
   Vector of length 3 determining a position in space. The plot will be rotated so that this position appears to be directly above the centre of the earth.
}
}
\details{
More 
}
\value{
None
}
\author{
Adrian Baddeley and Tom Lawrence
}
\seealso{
\code{\link{flatearth}}.

Use \code{\link{globepoints}} to add points to this plot,
\code{\link{globelines}} to add lines to this plot,
\code{\link{globearrows}} to add arrows to this plot,
and \code{\link{globedrawlat}} or \code{\link{globedrawlong}}
to draw latitude and longitude curves.
}
\examples{
   globeearth()
   globeearth(eye=place("madrid"))
}
\keyword{spatial}
