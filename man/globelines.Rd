\name{globeplot}
\alias{globepoints}
\alias{globelines}
\alias{globearrows}
\title{
Plot points, lines and arrows on a globe
}
\description{
  Plot points, lines and arrows on an plot of the Earth created by
  \code{\link{globeearth}} 
}
\usage{
  globepoints(loc, eye, top, \dots, do.plot=TRUE) 
  globelines(loc, eye, top, \dots, do.plot=TRUE) 
  globearrows(loc, eye, top, len=0.3, \dots, do.plot=TRUE) 
}
\arguments{
  \item{loc}{
    A matrix or list of points to plot (\code{globepoints}), draw lines
    between (\code{globelines}) or draw arrows at (\code{globearrows}), in
    order. 
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
  \item{len}{
    Length of arrows to be plotted (\code{globearrows} only)
  }
  \item{\dots}{
    Optional additional arguments passed to
    \code{\link{points}} (\code{globepoints}) or \code{\link{segments}}
    (\code{globelines}, \code{globearrows}). 
  }
  \item{do.plot}{
    Logical value indicating whether to actually perform the plotting,
    or just to return the calculated coordinates.
  }
}
\details{
  \code{\link{globeearth}} needs to be invoked first before any of these
  functions can be used.  The values of \code{eye} and \code{top} in
  \code{\link{globeearth}} should be identical to the values used in
  these functions to get meaningful results.
  
  \code{globepoints} plots points at the specified locations on the
  globe. 

  \code{globelines} draws line between the specified locations in the
  order that they are written, but not between the first and last points
  e.g. if we list three different points A, B, C in \emph{loc}, then
  lines will be drawn from A to B, and from B to C, but not C to A.
  
  \code{globearrows} plots lines at the specified locations, that extend
  away from the centre of the globe and are of the specified length. 
}
\value{
  The return value is invisible.
  For \code{globepoints}, the return value is a \code{list(x,y)}
  giving the plotted coordinates of the points.
  For \code{globelines} and \code{globearrows}, the return value is a
  4-column matrix giving the plotted coordinates of the lines or arrows
  as plotted by \code{\link[graphics]{segments}}.
}
\seealso{
  \code{\link{globeearth}}.

  Use \code{\link{globedrawlat}} or \code{\link{globedrawlong}}
  to draw latitude and longitude curves.
}
\examples{
ex1 <- matrix(nrow=3, ncol=2)
ex1[1,1] <- -80
ex1[1,2] <- 45
ex1[2,1] <- -60
ex1[2,2] <- 45
ex1[3,1] <- -50
ex1[3,2] <- 50
globeearth(eye=place("newyorkcity"))
globepoints(loc=ex1)
globelines(loc=ex1)
globearrows(loc=ex1)
}
\keyword{spatial}
