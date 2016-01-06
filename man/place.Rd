\name{place}
\alias{place}
\title{
Locations of Some Places on Earth
}
\description{
This function gives the locations of selected places on Earth.
}
\usage{place(placename)}
\arguments{
  \item{placename}{Character string giving the name of a place.}
}
\value{
  A \code{list(lon,lat)} giving the longitude
  and latitude in degrees.
}
\details{
\code{aarhus} is the city of Aarhus in Denmark; 
\code{madrid} is the capital of Spain;
\code{nedlands} is the location of the University of Western Australia in Perth, Western Australia;
\code{newyorkcity} and
\code{northpole} are self explanatory; and
\code{titanic} is the location of the wreck of 
the \emph{Titanic}.
}
\source{
General knowledge.
}
\examples{
place("aarhus")
}
\keyword{datasets}
