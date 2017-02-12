\name{cross}
\alias{cross}
\title{
  Cross Product
}
\description{
  Computes the cross-product of two vectors in 3D.
}
\usage{
  cross(a, b)
}
\arguments{
  \item{a,b}{
    Numeric vectors of length 3.
  }
}
\details{
  Computes the cross product of the two vectors.
}
\value{
   A vector of length 3 representing the cross product.  If the input
   vectors have length greater than 3, only the first 3 elements will be
   used in this calculation. 
}
\author{
 Adrian Baddeley and Tom Lawrence
}
\seealso{
  \code{\link{dot}}
}
\examples{
   a <- c(1,0,0)
   b <- c(0,1,0)
   cross(a, b)
}
\keyword{spatial}
