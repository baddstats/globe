\name{flatpoints}
\alias{flatpoints}
\title{
  Plot Points on a 2D Projection of the Earth
}
\description{
  Plots points on a 2D projection of the Earth created using
  \code{\link{flatearth}}, taking into account the projection used. 
}
\usage{
  flatpoints(loc, projection = c("atlas", "cylindrical"), ..., do.plot)
}
\arguments{
  \item{loc}{
    A data frame containing latitudes and longitudes of points to be plotted.
  }
  \item{projection}{
    The projection that was used in creating the 2D image.
}
  \item{\dots}{
    Other arguments usually used when plotting points.
  }
  \item{do.plot}{
    Logical value indicating whether to actually perform the plotting,
    or just to return the calculated coordinates.
  }
}
\details{
  If the value of projection used in this function is not the one used
  to create the image, then the points will not be plotted. 
}
\value{
  (Invisibly) a \code{list(x,y)} giving the plotted positions of
  the points.
}
\author{
  Adrian Baddeley and Tom Lawrence
}
\seealso{
  \code{\link{flatearth}}
}
\examples{
flatearth("atlas")
flatpoints(place("nedlands"))
}
\keyword{spatial}
