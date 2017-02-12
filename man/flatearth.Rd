\name{flatearth}
\alias{flatearth}
\title{
Plot the Earth as a 2D Projection
}
\description{
Plots the Earth as specified 2D projection, with a map of the major coastline.
}
\usage{
flatearth(projection = c("atlas", "cylindrical"), gdata, runlen, asp = NULL,
          ..., do.plot=TRUE)
}
\arguments{
  \item{projection}{
    The type of 2D projection to be performed.
  }
  \item{gdata}{
    Two-column matrix of latitude, longitude coordinates of 
    coastline vertices. Defaults to \code{earth$coords}.
    If \code{NULL}, no coastline is plotted.
  }
  \item{runlen}{
    Integer vector giving the number of vertices in each connected
    polygon in the coastline. Defaults to \code{earth$runlen}.
  }
  \item{asp}{
    Optional. Aspect ratio of the longitude and latitude scales.
  }
  \item{\dots}{
    Optional arguments passed to \code{\link[graphics]{segments}}
    to control the plotting of the coastline.
  }
  \item{do.plot}{
    Logical value indicating whether to actually perform the plotting,
    or just to return the calculated coordinates.
  }
}
\details{
  In the \code{atlas} projection, the continents are
  plotted in longitude, latitude coordinates without any correction.

  In the \code{cylindrical} projection, the latitude is transformed
  so that equal areas on the sphere are transformed onto equal areas
  on the plot.
}
\value{
  (Invisibly) a 4-column matrix containing the projected \eqn{(x,y)}
  coordinates of the segments of the coastline.
}
\author{
  Adrian Baddeley and Tom Lawrence
}
\seealso{
  \code{\link{globeearth}}.

  Use \code{\link{flatpoints}} to plot points on the image.
}
\examples{
flatearth("atlas")
flatearth("cylindrical")
}
\keyword{spatial}
