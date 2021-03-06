% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/day.R, R/deprecated.R, R/set.R
\name{dtt_day}
\alias{dtt_day}
\alias{dtt_day<-}
\alias{dtt_day.Date}
\alias{dtt_day.POSIXct}
\alias{dtt_day<-.Date}
\alias{dtt_day<-.POSIXct}
\alias{dtt_days}
\alias{dtt_days<-}
\alias{dtt_set_day}
\title{Get and Set Day Values}
\usage{
dtt_day(x, ...)

dtt_day(x) <- value

\method{dtt_day}{Date}(x, ...)

\method{dtt_day}{POSIXct}(x, ...)

\method{dtt_day}{Date}(x) <- value

\method{dtt_day}{POSIXct}(x) <- value

dtt_days(x, ...)

dtt_days(x) <- value

dtt_set_day(x, value)
}
\arguments{
\item{x}{A date/time vector.}

\item{...}{Unused.}

\item{value}{A integer vector of the day value(s).}
}
\value{
An integer vector (or the modified date/time vector).
}
\description{
Gets and sets day values for date/time vectors.
}
\section{Methods (by class)}{
\itemize{
\item \code{Date}: Get integer vector of day values for a Date vector

\item \code{POSIXct}: Get integer vector of day values for a POSIXct vector

\item \code{Date}: Set day values for a Date vector

\item \code{POSIXct}: Set day values for a POSIXct vector
}}

\examples{
x <- as.Date("1990-01-02")
dtt_day(x)
dtt_day(x) <- 27L
x

x <- as.POSIXct("1990-01-02 23:40:51")
dtt_day(x)
dtt_day(x) <- 27L
x
}
