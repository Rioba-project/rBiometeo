#' windspeed
#'
#' @description Calculate meteorological wind speed.
#' 
#' @param u numeric U zonal component (m/s), 
#' @param v numeric V meridian component (m/s), 
#' @return 
#'
#' @author   Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords Scaler speed wind
#' 
#' 
#' @export

windspeed=function(u, v) {return(sqrt(u^2+v^2))}
