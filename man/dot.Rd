\name{dot}
\alias{dot}
\title{
Dot Product
}
\description{
Computes the cross product of two vectors.
}
\usage{
dot(a, b)
}
\arguments{
  \item{a,b}{
two vectors of equal length
}
}

\details{
Vectors can be of any length provided they are equal.
}
\value{
A vector of length 1.
}
\author{
Adrian Baddeley and Tom Lawrence
}
\seealso{
\code{\link{cross}}
}
\examples{
dot(c(2,1),c(-3,4))
}

\keyword{"spatial"}
