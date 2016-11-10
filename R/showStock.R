#' Show Stock
#'
#' Show stock list data for a given stock, such as expert group, advice group,
#' assessment type, etc.
#'
#' @param stock the stock code, e.g. cod-347d.
#' @param year the active year of the stock list, e.g. 2016, or NULL to get the
#' most recent year available.
#' @param quiet whether to suppress printing to screen.
#'
#' @return A single-row data frame, printed to screen with
#' \code{print.simple.list} unless quiet is TRUE.
#'
#' \code{\link{getSLD}} gets all stock list data.
#'
#' \code{\link{icesSLD-package}} gives an overview of the package.
#'
#' @examples
#' showStock("sai-icel")
#' cod.347d <- showStock("cod-347d", quiet=TRUE)
#'
#' @export

showStock <- function(stock, year = NULL, quiet = FALSE)
{
  sldata <- getSLD()
  out <- sldata[sldata$StockCode == stock,]
  if (is.null(year))
    year <- max(out$ActiveYear)
  out <- out[out$ActiveYear == year,]
  if (!quiet)
    print.simple.list(out)
  invisible(out)
}
