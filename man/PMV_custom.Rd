% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PMV_custom.r
\name{PMV_custom}
\alias{PMV_custom}
\title{PMV_custom}
\usage{
PMV_custom(t, rh, wind, tr, clo, age, mbody, ht, gender = "male")
}
\arguments{
\item{t}{numeric    Air temperature in degC.}

\item{rh}{numeric   Relative humidity in percentage.}

\item{wind}{numeric Windspeed in meter per second.}

\item{tr}{numeric Mean radiant temperature in degC.}

\item{clo}{numeric  Available basic clothing insulation in clo.}

\item{age}{numeric Age in years.}

\item{mbody}{numeric   Body Mass in kg.}

\item{ht}{numeric Heigth of subject in meters.}

\item{gender}{character Sex of the subject. Default is "male".}
}
\value{
Predicted Mean Vote customized
}
\description{
Calculate Predicted Mean Vote (PMV) following ISO 7730 customizing some individual features.
}
\author{
Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@ibe.cnr.it}
}
\keyword{PMV_custom}
