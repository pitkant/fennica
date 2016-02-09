#' @title city_geocoordinates_all
#' @description Retrieve geocoordinates for a list of cities from OSM Nominatim API. WIP
#' @param names A list of city names
#' @param wait Courtesy wait (seconds) between requests to Nominatim API.
#' @return DF with two columns (lat, long)
#' @export
#' @details TODO
#' @author Aaro Salosensaari \email{aaro.salosensaari@@helsinki.fi}
#' @references See citation("fennica")
#' @examples TODO
#' @keywords utilities
city_geocoordinates_all <- function (names, wait=1) {

    traverse <- function (name) {
        gc <- city_geocoordinate(name)
        print(paste("Queried:", name))
        print(paste("Got:", gc$display_name, gc$lat, gc$lon))

        # wait here a bit to adhere to Nominatim usage policy
        Sys.sleep(wait)

        data.frame(lat=gc$lat, lon=gc$lon)
    }

    df <- plyr::ldply(names, traverse)

    return(df)
}

