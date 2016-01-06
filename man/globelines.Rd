\name{globeplot}
\alias{globepoints}
\alias{globelines}
\alias{globearrows}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot points, lines and arrows on a globe
}
\description{
Plot points, lines and arrows on an image of the Earth created by \code{\link{globeearth}}
}
\usage{
globepoints(loc, eye=place("nedlands"), top=place("northpole"), ...) 
globelines(loc, eye=place("nedlands"), top=place("northpole"), ...) 
globearrows(loc, eye=place("nedlands"), top=place("northpole"), len=0.3, ...) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{loc}{
A matrix or list of points to plot (\code{globepoints}), draw lines between (\code{globelines}) or draw arrows at (\code{globearrows}), in order.
}

  \item{eye}{
Viewpoint. A vector of length 3 determining a position in space.  Should take the same value as when invoking \code{\link{globeearth}}.
}

  \item{top}{
   Vector of length 3 determining a position in space. The plot will be rotated so that this position appears to be directly above the centre of the earth.  Should take the same value as when invoking \code{\link{globeearth}}.
}

\item{len}{
Length of arrows to be plotted (\code{globearrows} only)
}

  \item{\dots}{
Optional additional arguments that get passed to \code{\link{points}} (\code{globepoints}) or \code{\link{segments}} (\code{globelines}, \code{globearrows}).
}
}
\details{
\code{\link{globeearth}} needs to be invoked first before any of these functions can be used.  The values of \code{eye} and \code{top} in \code{\link{globeearth}} should be identical to the values used in these functions to get meaningful results.
\code{globepoints} plots points at the specified locations on the globe.
\code{globelines} draws line between the specified locations in the order that they are written, but not between the first and last points e.g. if we list three different points A, B, C in \emph{loc}, then lines will be drawn from A to B, and from B to C, but not C to A.
\code{globearrows} plots lines at the specified locations, that extend away from the centre of the globe and are of the specified length.
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
globepoints(loc=ex1, place("newyorkcity"), top=place("northpole"))
globelines(loc=ex1, place("newyorkcity"), top=place("northpole"))
globearrows(loc=ex1, place("newyorkcity"), top=place("northpole"))
}
\keyword{spatial}
