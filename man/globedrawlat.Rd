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
globedrawlat(lat, eye, top, ...)
globedrawlong(lon, eye, top, ...)

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
    Viewpoint. Should not be specified under normal circumstances since it is
    set by a previous call to \code{\link{globeearth}} (details documented
    there).
  }
  \item{top}{
    Top of plot (commonly the North Pole). Should not be specified under normal
    circumstances since it is set by a previous call to \code{\link{globeearth}}
    (details documented there).
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
globedrawlat(lat=seq(-90, 90, 15))
globedrawlong(lon=seq(-180,180,30))
}

\keyword{spatial}
