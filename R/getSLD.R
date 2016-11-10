#' Get Stock List Data
#'
#' Get stock list data such as stock code, expert group, assessment type, etc.
#'
#' @return A data frame.
#'
#' \code{\link{showStock}} shows stock list data for one stock.
#'
#' \code{\link{icesSLD-package}} gives an overview of the package.
#'
#' @examples
#' sldata <- getSLD()
#'
#' @export

getSLD <- function() {
  # read and parse JSON to data frame
  url <- "http://sld.ices.dk/services/odata4/StockListDWs4"
  out <- parseSLD(url)

  out
}
