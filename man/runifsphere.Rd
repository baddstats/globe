\name{runifsphere}
\alias{runifsphere}
\alias{runifsphere.wrong}
\title{
  Random Points on a Sphere
}
\description{
  These functions generate random points on a
  sphere using different rules.
}
\usage{
 runifsphere(n)
 runifsphere.wrong(n)
}
\arguments{
  \item{n}{
    The number of points to be simulated.
  }
}
\details{
  \code{runifsphere} generates uniformly-distributed random points on the
  sphere.

  \code{runifsphere.wrong} generates random points which are uniformly
  distributed in (longitude, latitude) coordinates.
  These are not uniformly distributed on the sphere. 
}
\value{
  A data frame containing two columns of coordinates: the first column
  for longitude, the second column for latitude. 
}
\author{
  Adrian Baddeley and Tom Lawrence
}
\examples{
  runifsphere(10)
  runifsphere.wrong(10)
}
\keyword{spatial}
