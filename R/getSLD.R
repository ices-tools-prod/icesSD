#' Get Stock List Data
#'
#' Get haul data such as position, depth, sampling method, etc.
#'
#' @return A data frame.
#'
#' \code{\link{icesSLD-package}} gives an overview of the package.
#'
#' @examples
#' sldata <- getSLD()
#'
#' @export

getSLD <- function() {
  # checks?

  url <- "http://stocklist.ices.dk/services/odata4/StockListDWs4"

  # read and parse jsonlite from API
  out <- parseSLD(url)

  # return
  out
}





