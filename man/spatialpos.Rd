\name{spatialpos}
\alias{spatialpos}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Convert to coordinates on the unit sphere
}
\description{
Converts latitudes and longitudes (given as lists, vector or matrix) into 3D Cartesian coordinates on the unit sphere.
}
\usage{
spatialpos(lon, lat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lon}{
A vector, matrix column, or list of longitudes
}
  \item{lat}{
A vector, matrix column, or list of longitudes
}
}
\details{
The longitudes and latitudes can be input as a single entity (i.e. a 2 column matrix, or pair of lists) rather than as separate entities.
}
\value{
A matrix with one row per set of Cartesian coordinates
}

\author{
Adrian Baddeley and Tom Lawrence
}

\seealso{
\emph{ensure3d} ensures that the given data is a vector 3D coordinates, and where possible converts the data if they are not in this format.  \emph{ensurelonlat} ensures that the given data are a pair of lists, one list of for longitude, one for latitude, and where possible converts the data if they are not in this format.
}
\examples{
spatialpos(30, 60)
spatialpos(place("nedlands"))
}

\keyword{spatial}