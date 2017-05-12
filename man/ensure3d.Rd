\name{ensure}
\alias{ensure3d}
\alias{ensurelonlat}
\title{
Checking and converting coordinates
}
\description{
This is used as a checking mechanism for other functions to ensure data is given in the appropriate format, and if it is not, converting to the appropriate format where possible.
}
\usage{
ensure3d(x, single = FALSE)
ensurelonlat(x)
}
\arguments{
  \item{x}{
A vector, matrix or dataframe to be checked
}
  \item{single}{
Logical indicating whether a single point is expected.
}
}

\details{
\emph{ensure3d} checks to ensure that the given data are one or more sets of 3D Cartesian coordinates, and converts them to numeric vectors if they are not already.  If longitudes and latitudes are given as input into \emph{ensure3d}, they will be converted to 3D Cartesian coordinates, on the unit sphere.
\emph{ensurelonlat} checks to ensure that the given data are one or more pairs of longitude and latitude and converts the data to a pair of lists if they are not already.  Vectors and single rows/columns of matrices can be used as input for both functions; multiple rows/colums of matrices and pairs of lists can also be used as input for \emph{ensurelonlat}.
}
\value{
\emph{ensure3d}
A numeric vector or matrix
\emph{ensurelonlat}
\item{$lon}{List of Longitudes}
\item{$lat}{List of Latitudes}
}

\author{
Adrian Baddeley, Ege Rubak and Tom Lawrence
}
\seealso{
\code{\link{spatialpos}}
}
\examples{
ensure3d(c(1,4,2))
ensure3d(matrix(1:3, ncol = 3))
ensure3d(data.frame(x = 1:2, y = 3:4, z = 5:6), single = FALSE)
ensure3d(data.frame(lon = c(0,180), lat = c(-45,45)), single = FALSE)
ensurelonlat(c(145, -90))
}

\keyword{spatial}

