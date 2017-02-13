\name{globeearth}
\alias{globeearth}
\title{
  Plot Earth as 3D Globe
}
\description{
  Plots the Earth as a 3D sphere, seen from a specified viewpoint,
  with a map of the major coastline (by default).
}
\usage{
  globeearth(gdata, runlen, eye, top, \dots, do.plot=TRUE)
}
\arguments{
  \item{gdata}{
   Two-column matrix of latitude, longitude coordinates of 
   coastline vertices. Defaults to \code{earth$coords}.
   If \code{NULL}, no coastline is plotted.
}
  \item{runlen}{
   Integer vector giving the number of vertices in each connected
   polygon in the coastline. Defaults to \code{earth$runlen}.
}
  \item{eye}{
    Viewpoint. A vector of length 3 (or a \code{list(lon,lat)})
    determining a position in space. If unspecified the last value from a call
    to \code{globeearth} will be used. If this is the first call to
    \code{globeearth} the default value of zero degrees latitude and longitude
    will be used.
  }
  \item{top}{
    Vector of length 3 (or a \code{list(lon,lat)})
    determining a position in space. The plot will be
    rotated so that this position appears to be directly above the
    centre of the earth. If unspecified the last value from a call
    to \code{globeearth} will be used. If this is the first call to
    \code{globeearth} the default value of 90 degrees latitude and zero degrees
    longitude (i.e. the North Pole) will be used.
  }
  \item{\dots}{
    Arguments passed to \code{\link[graphics]{segments}} controlling the
    plotting of the coastline.
  }
  \item{do.plot}{
    Logical value indicating whether to actually perform the plotting,
    or just to return the calculated coordinates.
  }
}
\details{
  The globe is drawn as it would be seen by a viewer at position
  \code{eye}, with the location \code{top} at the top of the plot.
  Only those parts of the coastline that are visible from \code{eye}
  (on the side of the globe facing \code{eye}) will be plotted.
}
\value{
  (Invisibly) a 4-column matrix containing the projected \eqn{(x,y)}
  coordinates of the segments of the coastline.
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
