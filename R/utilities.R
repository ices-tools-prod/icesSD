#' @importFrom RCurl basicTextGatherer
#' @importFrom RCurl curlPerform
curlSLD <- function(url) {
  # read only XML table and return as string
  reader <- basicTextGatherer()
  curlPerform(url = url,
              httpheader = c('Content-Type' = "text/xml; charset=utf-8", SOAPAction=""),
              writefunction = reader$update,
              verbose = FALSE)
  reader$value()
}


#' @importFrom jsonlite fromJSON
#' @importFrom curl new_handle
#' @importFrom curl handle_setheaders
#' @importFrom curl curl
parseSLD <- function(url) {
  # parse JSON string to data frame
  fromJSON(url)$value
}


checkSLDWebserviceOK <- function() {
  # return TRUE if web service is active, FALSE otherwise
  out <- curlSLD(url = "http://admin.ices.dk/StockListServices/odata")

  # check server is not down by inspecting XML response for internal server error message
  if (grepl("404 - File or directory not found", out)) {
    warning("Web service failure: the server seems to be down, please try again later.")
    FALSE
  } else {
    TRUE
  }
}
