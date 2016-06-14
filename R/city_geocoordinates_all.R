#' @title city_geocoordinates_all
#' @description Retrieve geocoordinates for a list of cities from OSM Nominatim API. WIP
#' @param names A list of city names
#' @param wait Courtesy wait (seconds) between requests to Nominatim API.
#' @return DF with two columns (lat, long)
#' @export
#' @details TODO
#' @author Aaro Salosensaari \email{aaro.salosensaari@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{TODO}
#' @keywords utilities
city_geocoordinates_all <- function (names, wait=1) {

    traverse <- function (name) {
        query <- paste0("&city=",name)
        gc <- gisfin::get_geocode(query, service="openstreetmap", raw_query=T)
        print(paste("Query:", name))
        print(paste("Got:", gc$lat, gc$lon))

        # wait here a bit to adhere to Nominatim usage policy
        Sys.sleep(wait)

        c(gc$lat, gc$lon)
    }

    m <- sapply(names, traverse)
    df <- data.frame(lat=m[1,],lon=m[2,])

    return(df)
}

