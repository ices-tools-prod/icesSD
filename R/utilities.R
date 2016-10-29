#' @importFrom RCurl basicTextGatherer
#' @importFrom RCurl curlPerform
curlSLD <- function(url) {
  # read only XML table and return as string
  reader <- basicTextGatherer()
  curlPerform(url = url,
              httpheader = c('Content-Type' = "text/xml; charset=utf-8", SOAPAction=""),
              writefunction = reader$update,
              verbose = FALSE)
  # return
  reader$value()
}


#' @importFrom jsonlite fromJSON
#' @importFrom curl new_handle
#' @importFrom curl handle_setheaders
#' @importFrom curl curl
parseSLD <- function(url) {
  # parse the json text string suppplied by the SLD webservice
  # returning a dataframe
  fromJSON(url)$value
}


checkSLDWebserviceOK <- function() {
  # return TRUE if webservice server is good, FALSE otherwise
  out <- curlSLD(url = "http://admin.ices.dk/StockListServices/odata")

  # Check the server is not down by insepcting the XML response for internal server error message.
  if (grepl("404 - File or directory not found", out)) {
    warning("Web service failure: the server seems to be down, please try again later.")
    FALSE
  } else {
    TRUE
  }
}
