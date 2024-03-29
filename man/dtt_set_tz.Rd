% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tz.R
\name{dtt_set_tz}
\alias{dtt_set_tz}
\alias{dtt_set_tz.POSIXct}
\title{Set Time Zone}
\usage{
dtt_set_tz(x, tz = dtt_default_tz(), ...)

\method{dtt_set_tz}{POSIXct}(x, tz = dtt_default_tz(), ...)
}
\arguments{
\item{x}{A date/time vector.}

\item{tz}{A string of the new time zone.}

\item{...}{Unused.}
}
\value{
The date time vector with the new time zone.
}
\description{
Sets the time zone for a date time vector without adjusting the clock time.
Equivalent to \code{lubridate::force_tz()}.
}
\section{Methods (by class)}{
\itemize{
\item \code{dtt_set_tz(POSIXct)}: Set the time zone for a POSIXct vector

}}
\examples{
dtt_set_tz(as.POSIXct("1970-01-01", tz = "Etc/GMT+8"), tz = "UTC")
}
\seealso{
\code{\link[=dtt_adjust_tz]{dtt_adjust_tz()}}

Other tz: 
\code{\link{dtt_adjust_tz}()},
\code{\link{dtt_sys_tz}()},
\code{\link{dtt_tz}()}
}
\concept{tz}
