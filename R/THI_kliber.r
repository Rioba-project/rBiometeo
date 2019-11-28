#' THI_kliber
#'
#' Calculate Temperature Humidity Index following Kliber equantions. Adopted by Sardinia ARPA.
#'
#' @param t numeric  Air temperature in Celsius degrees.
#' @param rh numeric Relative humidity in percentage (%).
#' @return 
#'
#'
#' @author    Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  THI_kliber 
#' 
#' @export
#'
#'
#'
#'

THI_kliber=function(t,rh) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=THI_kliber(t[i],rh[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



