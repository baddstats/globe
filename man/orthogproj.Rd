\name{orthogproj}
\alias{orthogproj}
\title{
  Orthogonal Projection
}
\description{
  Project points from the unit sphere onto a plane orthogonal
  to the viewing direction.
}
\usage{
orthogproj(eye, top, loc)
}
\arguments{
  \item{eye}{
    Viewpoint. A vector of length 3 (or a \code{list(lon,lat)})
    determining a position in space.
  }
  \item{top}{
    Top point. A location which will be projected onto the \eqn{y} axis.
    Vector of length 3 (or a \code{list(lon,lat)})
    determining a position in space. 
  }
  \item{loc}{
    Vector of length 3, or matrix with 3 columns,
    or \code{list(lon,lat)}. The points on the sphere to be projected. 
  }
}
\details{
  This function is used to obtain orthogonal projections of
  points on the sphere, for use in plotting 3D views of the sphere.

  Each point of \code{loc} is expressed 
  in an orthonormal coordinate system determined by the
  arguments \code{eye} and \code{top}. The coordinate system is
  such that the third (\eqn{z}) axis
  passes through the eye of the viewer and the
  centre of the sphere.
}
\value{
  A vector (or matrix) giving the transformed coordinates of each point,
  with the first two coordinates giving the orthogonal projection.
}
\author{
Adrian Baddeley and Tom Lawrence
}
\seealso{
\code{\link{globeearth}}
}
\examples{
 orthogproj(place("newyorkcity"), place("northpole"), c(1,0,0))
}

\keyword{spatial}
