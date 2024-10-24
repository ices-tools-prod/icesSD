#' Get Stock
#'
#' Get stock list data for one or more stocks, in one or more years.
#'
#' @param stock the stock code, e.g. \code{"cod-347d"}.
#' @param year the active year of the stock list, e.g. \code{2016}.
#'
#' @details
#' Pass \code{stock = NULL} to get all stocks, or \code{year = NULL} to get all
#' years.
#'
#' @return
#' A data frame containing the stock list data.
#'
#' @note
#' The stock list data specify the expert group, advice group, assessment type,
#' etc.
#'
#' @seealso
#' \code{\link{getSD}} shows stock list data for all stocks in all years.
#'
#' \code{\link{showStock}} shows stock list data for one stock, in a readable
#' format.
#'
#' \code{\link{icesSD-package}} gives an overview of the package.
#'
#' @examples
#' \dontrun{
#' getStock("sai-icel")
#' getStock("cod-347d", 2016)
#' }
#'
#' @export

getStock <- function(stock = NULL, year = NULL)
{
  out <- getSD()

  if (!is.null(stock))
    out <- out[out$StockKeyLabel %in% stock,]

  if (!is.null(year))
    out <- out[out$ActiveYear %in% year,]

  out
}
