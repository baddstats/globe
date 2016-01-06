\name{orthogproj}
\alias{orthogproj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Orthogonal Projections
}
\description{
Performs an orthogonal projection of a given point(s) on the unit sphere depending on two other given points.
}
\usage{
orthogproj(eye, top, loc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{eye,top}{
Vectors of length 3.  The point will be projected onto the vector (across the surface of the sphere) that these points are both sitting on.
}
  \item{loc}{
Vector of length 3, or matrix with 3 columns.  The point(s) to be projected.
}
}
\details{
All 3 vectors should be of unit length to provide a relevant result when  relevant when using e.g. \code{\link{globeearth}}.
}
\value{
A vector (or matrix) showing the projection(s) of the desired point(s).
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
