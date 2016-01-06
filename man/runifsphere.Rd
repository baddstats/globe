\name{randomunifsphere}
\alias{runifsphere}
\alias{runifsphere.wrong}
\title{
Simulate uniformly distributed random data on a sphere
}
\description{
These functions simulate uniform data on a sphere using different approaches. \code{runifsphere} correctly simulates the uniform data. \code{runifsphere.wrong} simulates data in a commonly expected way which is actually incorrect.
}
\usage{
 runifsphere(n)
 runifsphere.wrong(n)
}
\arguments{
  \item{n}{
    The number of points to be simulated
  }
}
\details{
The commonly expected way to perform this simulation (as performed by \emph{runifsphere.wrong}) is to simulate uniform random variables for both latitude and longitude.  For longitude this appraoch is correct; however for latitude this is wrong.  This approach results in a greater density of points at the north and south poles than at the equator.

To correctly simulate the data, one must realise it is the cosines of the latitudes that are uniformally distributed.  \emph{runifsphere} takes this into account thus correctly simulates uniformally distributed data on the sphere.
}
\value{
A data frame containing a two columns; the first column for longitude, the second column for latitude.
}

\author{
Adrian Baddeley and Tom Lawrence
}

\examples{
runifsphere(10)
runifsphere.wrong(10)
}
\keyword{spatial}
