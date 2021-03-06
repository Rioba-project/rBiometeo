% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rad_direct_tilted.r
\name{rad_direct_tilted}
\alias{rad_direct_tilted}
\title{rad_direct_tilted}
\usage{
rad_direct_tilted(jddate, az, elev, planezen, planeaz)
}
\arguments{
\item{jddate}{numeric        Date in format DOY day of year.}

\item{az}{numeric            Sun azimuth in decimal degrees.}

\item{elev}{numeric          Sun elevation in decimal degrees.}

\item{planezen}{numeric      Zenital angles of the plane.}

\item{planeaz}{numeric       Azimuthal angles of the plane.}
}
\value{
incident tilted radiation
}
\description{
Computed a incident tilted radiation for a inclinated (planezen) and orientated plane (planeaz).
}
\author{
Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@ibe.cnr.it}
}
\keyword{Tilted}
\keyword{radiation.}
