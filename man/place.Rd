\name{place}
\alias{place}
\title{
Locations of Some Places on Earth
}
\description{
This function gives the locations of selected places on Earth.
}
\usage{place(placename, online = TRUE, verbose = TRUE)}
\arguments{
  \item{placename}{Character string giving the name of a place.}
  \item{online}{Logical. Should an online lookup be performed if needed?}
  \item{verbose}{Logical. Should verbose output be produced?}
}
\value{
  A \code{list(lon,lat)} giving the longitude
  and latitude in degrees.
}
\details{
Below is a list of builtin placenames. If \code{placename} does not exactly
match any of these an optional online lookup is done using
\code{\link[RgoogleMaps]{getGeoCode}}, which requires the \code{RgoogleMaps}
package.

List of builtin placenames:
  \code{aarhus} and \code{aalborg} are cities in Denmark; 
  \code{madrid} is the capital of Spain;
  \code{perth} is the capital of Western Australia;
  \code{curtin} is the location of Curtin University, Western Australia;
  \code{titanic} is the location of the wreck of 
  the \emph{Titanic};
  \code{casey} and \code{mawson} are bases in the Australian Antarctic
  Territory;
  \code{newyorkcity}, \code{pyongyang}, \code{everest}, \code{kilimanjaro},
  \code{northpole} and \code{southpole} are self explanatory.
}
\source{
General knowledge.
}
\examples{
place("aarhus")
}
\keyword{datasets}
