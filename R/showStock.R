#' Show Stock
#'
#' Show stock list data for one stock, in a readable format.
#'
#' @param stock the stock code, e.g. \code{"cod.27.7a"}.
#' @param year the active year of the stock listing, e.g. \code{2024}.
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
#' \code{\link{getSD}} is the underlying function to get the stock list data.
#'
#' \code{\link{icesSD-package}} gives an overview of the package.
#'
#' @examples
#' \dontrun{
#' showStock("cod.27.7a", 2023)
#' showStock("cod.27.7a", 2024)
#' }
#'
#' @export

showStock <- function(stock, year = NULL)
{
  out <- getSD(stock = stock[1], year = year[1])

  out <- out[out$ActiveYear == max(out$ActiveYear),]

  print.simple.list(out)
  invisible(out)
}
