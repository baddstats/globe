\name{flatearth}
\alias{flatearth}
\title{
Plot the Earth as a 2D Projection
}
\description{
Plots the Earth as specified 2D projection, with a map of the major coastline.
}
\usage{
flatearth(projection = c("atlas", "cylindrical"), gdata, runlen, asp = NULL)
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
    polygon in the coastline. 
  }
  \item{asp}{
    Optional. Aspect ratio of the longitude and latitude scales.
  }
}
\details{
  The atlas projection creates a rectangular image with no-rescaling to
  account for the lines of longitude decreasing in length as one nears
  the north or south pole.  The cylindrical projection involves such
  re-scaling. 
}
\value{
  An image of the Earth using the desired projection.
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
