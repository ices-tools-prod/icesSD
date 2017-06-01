#' Show Stock
#'
#' Show stock list data for a given stock, such as expert group, advice group,
#' assessment type, etc.
#'
#' @param stock the stock code, e.g. cod-347d.
#' @param year the active year of the stock list, e.g. 2016, or NULL to get the
#' most recent year available.
#'
#' @return A single-row data frame, printed to screen with
#' \code{print.simple.list} unless quiet is TRUE.
#'
#' \code{\link{getSD}} gets all stock list data.
#'
#' \code{\link{icesSD-package}} gives an overview of the package.
#'
#' @examples
#' showStock("sai-icel")
#' cod.347d <- showStock("cod-347d")
#'
#' @export

showStock <- function(stock = NULL, year = NULL)
{
  out <- getSD()

  if (!is.null(stock))
    out <- out[out$StockKeyLabel == stock,]

  if (!is.null(year))
    out <- out[out$ActiveYear == year,]

  out
}
