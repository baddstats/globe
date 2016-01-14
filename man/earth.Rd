\name{earth}
\alias{earth}
\docType{data}
\title{
  Major Coastline of Earth
}
\description{
  Coordinates of the coastline of continents and major islands on Earth.
}
\usage{data("earth")}
\format{
  A list with two components:
  \code{coords} is a two-column matrix containing (longitude, latitude)
  coordinates of the coastline, in degrees;
  \code{runlen} is an integer vector giving the number of vertices
  for each connected polygon in the coastline.
}
\source{
  The \pkg{maps} package.
}
\examples{
data(earth)
globeearth(earth$coords, earth$runlen)
}
\keyword{datasets}
