\name{globedrawlat}
\alias{globedrawlat}
\alias{globedrawlong}
\title{
Drawing lines of latitude and longitude
}
\description{
These functions respectively draw lines of latitude and longitude on an image of the Earth create using \code{\link{globeearth}}.
}
\usage{
globedrawlat(lat, eye = place("nedlands"), top = place("northpole"), ...)
globedrawlong(lon, eye = place("nedlands"), top = place("northpole"), ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat}{
A list showing lines of latitude to be drawn
}
  \item{lon}{
A list showing lines of longitude to be drawn
}

  \item{eye}{
Viewpoint. A vector of length 3 determining a position in space.  Should take the same value as when invoking \emph{globeearth}.
}
  \item{top}{
   Vector of length 3 determining a position in space. The plot will be rotated so that this position appears to be directly above the centre of the earth. Should take the same value as when invoking \emph{globeearth}.
}
 \item{\dots}{
    Additional arguments passed to \code{\link{segments}} to 
    control the plotting of lines.
 }
}
\value{
Lines of latitude/longitude are plotted on the existing image.
}

\author{Adrian Baddeley and Tom Lawrence
%%  ~~who you are~~
}
\seealso{
\code{\link{globeearth}}.

Use \code{\link{globepoints}} to add points to this plot,
\code{\link{globelines}} to add lines to this plot, and
\code{\link{globearrows}} to add arrows to this plot.

}
\examples{
globeearth()
globeearth(eye=place("madrid"))
globedrawlat(lat=seq(-90, 90, 15), eye=place("aarhus"))
globedrawlong(lon=seq(-180,180,30))
}

\keyword{spatial}
