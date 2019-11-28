#' thom
#'
#' Calculate Thom discomfort index by using wet bulb temperature estimation.
#'
#' @param numeric t Air temperature in degC.
#' @param numeric rh Air Relative humidity in percentage (%).
#' @param numeric tg Solar Radiation Radiance in Watt/mq.
#' @param numeric pair Air Pressure in hPa. Default is 1010.
#' @return Thom index
#'
#'
#' @author    Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  thom, sultryness,  discomfort index
#' @references Thom, E.C. 1959 The discomfort index. Weatherwise, 12, 57,60
#' 
#' @export
#'
#'
#'
#'
thom<-function(t,rh,wind=0.2,pair=1010) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$assign("t", as.array(wind))
                         ct$assign("pair", as.array(pair))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=thom(t[i],rh[i],wind[0],pair[0])};")
                         res=ct$get("res")
                         return(ifelse(!is.numeric(res),NA,res))
}



