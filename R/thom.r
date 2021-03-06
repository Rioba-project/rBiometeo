#' thom
#'
#' Calculate Thom discomfort index by using wet bulb temperature estimation.
#'
#' @param t numeric Air temperature in degC.
#' @param rh numeric Relative humidity in percentage.
#' @param wind numeric Wind speed iq.
#' @param pair numeric Air Pressure in hPa. Default is 1010.
#' @return thom index in degC
#' @author Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @references Thom, E.C. 1959 The discomfort index. Weatherwise, 12, 57,60
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



