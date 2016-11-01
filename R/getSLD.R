#' Get Stock List Data
#'
#' Get stock list data such as stock code, expert group, assessment type, etc.
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
  url <- "http://stocklist.ices.dk/services/odata4/StockListDWs4"

  # read JSON and parse to data frame
  out <- parseSLD(url)

  out
}
