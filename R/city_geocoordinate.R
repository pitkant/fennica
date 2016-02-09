#' @title city_geocoordinate
#' @description Retrieve geocoordinates for one city(/town/...) name from OSM Nominatim API. WIP
#' @param name Name of a city
#' @return list: latitude, longitude, (OSM) display name, raw.list returned by API
#' @export
#' @details Tweaked version of gisfin/geocode.R authored by Juuso Parkkinen.
#' @author Aaro Salosensaari \email{aaro.salosensaari@@helsinki.fi}
#' @references See citation("fennica")
#' @examples TODO
#' @keywords utilities
city_geocoordinate <- function (name) {
    # NOTE. I'm heavily prototyping this (that's why it searches for just one name -> retuns one coordinate pair)

    # currently this is actually almost exactly the same as gisfin/get_geocode
    # however, query with ?q=<cityname> gives usually multiple results (city, admin buildings, railway stations etc.),
    # and requesting the city/town with ?city=<cityname> might be marginally more nicer / reliable.

    # one could easily make necessary edits to gisfin

    uri <- paste0("http://nominatim.openstreetmap.org/search?format=json&city=",name)

    res.json <- RCurl::getURI(uri)
    res.list <- rjson::fromJSON(res.json)
    if (length(res.list)==0) {
        stop("No geocode found")
    } else {
        # get the geocode from res:
        res <- list(lat=as.numeric(res.list[[1]]$lat),
                    lon=as.numeric(res.list[[1]]$lon),
                    display_name=res.list[[1]]$display_name,    # might turn out useful for validating the results
                    raw.list=res.list)
    }

    return(res)
}
