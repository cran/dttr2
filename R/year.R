#' Get and Set Year Values
#'
#' Gets and sets year values for date/time vectors.
#'
#' @inheritParams params
#' @param value A integer vector of the year value(s).
#'
#' @return An integer vector (or the modified date/time vector).
#' @family set date
#' @seealso [dtt_year_decimal()]
#' @export
#'
#' @examples
#' x <- as.Date("1990-01-02")
#' dtt_year(x)
#' dtt_year(x) <- 11L
#' x
#'
#' x <- as.POSIXct("1990-01-02 23:40:51")
#' dtt_year(x)
#' dtt_year(x) <- 2022L
#' x
dtt_year <- function(x, ...) {
  UseMethod("dtt_year")
}

#' @rdname dtt_year
#' @export
`dtt_year<-` <- function(x, value) {
  UseMethod("dtt_year<-")
}

#' @describeIn dtt_year Get integer vector of year values for a Date vector
#' @export
dtt_year.Date <- function(x, ...) {
  chk_unused(...)
  as.integer(format(x, "%Y"))
}

#' @describeIn dtt_year Get integer vector of year values for a POSIXct vector
#' @export
dtt_year.POSIXct <- function(x, ...) {
  chk_unused(...)
  x <- as.POSIXlt(x, tz = dtt_tz(x))
  as.integer(x$year + 1900L)
}

#' @describeIn dtt_year Set year values for a Date vector
#' @export
`dtt_year<-.Date` <- function(x, value) {
  chk_whole_numeric(value)
  chk_range(value, c(0L, 2999L))
  chk_subset(length(value), c(1L, length(x)))

  if (!length(x)) {
    return(x)
  }
  x <- format(x)
  names <- names(x)
  if (identical(length(value), 1L)) {
    x <- dtt_date(sub_year(x, value))
    names(x) <- names
    return(x)
  }
  x <- dtt_date(mapply(FUN = sub_year, x, value, USE.NAMES = FALSE))
  names(x) <- names
  x
}

#' @describeIn dtt_year Set year values for a POSIXct vector
#' @export
`dtt_year<-.POSIXct` <- function(x, value) {
  chk_whole_numeric(value)
  chk_range(value, c(0L, 2999L))
  chk_subset(length(value), c(1L, length(x)))

  if (!length(x)) {
    return(x)
  }
  names <- names(x)
  tz <- dtt_tz(x)
  x <- as.POSIXlt(x, tz = tz)
  x$year <- value - 1900L
  x <- as.POSIXct(format(x), tz = tz)
  names(x) <- names
  x
}
