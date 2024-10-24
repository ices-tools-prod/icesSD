#' Show Stock
#'
#' Show stock list data for one stock, in a readable format.
#'
#' @param stock the stock code, e.g. \code{"cod-347d"}.
#' @param year the active year of the stock list, e.g. \code{2016}.
#'
#' @details
#' If \code{year = NULL} then the newest year is shown.
#'
#' @return
#' A single-row data frame, shown on the screen with \code{print.simple.list}.
#'
#' @note
#' The stock list data specify the expert group, advice group, assessment type,
#' etc.
#'
#' @seealso
#' \code{\link{getStock}} is the underlying function to get the stock list data.
#'
#' \code{\link{icesSD-package}} gives an overview of the package.
#'
#' @examples
#' \dontrun{
#' showStock("sai-icel")
#' showStock("cod-347d", 2016)
#' }
#'
#' @export

showStock <- function(stock, year = NULL)
{
  out <- getStock(stock, year)

  out <- out[out$StockKeyLabel == sort(out$StockKeyLabel)[1],]
  out <- out[out$ActiveYear == max(out$ActiveYear),]

  print.simple.list(out)
  invisible(out)
}
