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
  out <- parseSLD("http://sld.ices.dk/services/odata4")

  # check server is not down by inspecting JSON response for internal server error message
  if (grepl("404 - File or directory not found", out)) {
    warning("Web service failure: the server seems to be down, please try again later.")
    FALSE
  } else {
    TRUE
  }
}
