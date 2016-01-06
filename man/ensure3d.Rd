\name{ensure}
\alias{ensure3d}
\alias{ensurelonlat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Checking and converting coordinates
}
\description{
This is used as a checking mechanism for other functions to ensure data is given in the appropriate format, and if it is not, converting to the appropriate format where possible.
}
\usage{
ensure3d(x)
ensurelonlat(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A vector, matrix or dataframe to be checked
}
}

\details{
\emph{ensure3d} checks to ensure that the given data are one or more sets of 3D Cartesian coordinates, and converts them to numeric vectors if they are not already.  If latitudes and longitudes are given as input into \emph{ensure3d}, they will be converted to 3D Cartesian coordinates, on the unit sphere.
\emph{ensurelonlat} checks to ensure that the given data are one or more pairs of longitude and latitude and converts the data to a pair of lists if they are not already.  Vectors and single rows/columns of matrices can be used as input for both functions; multiple rows/colums of matrices and pairs of lists can also be used as input for \emph{ensurelonlat}.
}
\value{
\emph{ensure3d}
A numeric vector or matrix
\emph{ensurelonlat}
\item{$lon}{List of Longitudes}
%%  \item{$lat}{List of Latitudes}
%% ...
}

\author{
Adrian Baddeley and Tom Lawrence
}

\seealso{
\code{\link{spatialpos}}
}
\examples{
ensure3d(c(1,4,2))
ensurelonlat(c(-90,145))
}

\keyword{spatial}

