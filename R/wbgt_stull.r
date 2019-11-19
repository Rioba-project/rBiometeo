#' wbgt_full
#'
#' Calculate wet bulb globe temperature index for outdoor environements by using globometric temperature and air pressure in hPa ( millibars).
#' 
#
#' @param numeric t Air temperature in Celsius degrees.
#' @param numeric rh Air Relative humidity in percentage.
#' @param numeric tg Solar Radiation Radiance in watt on square meter.
#' @param numeric press Air Pressure in hPa. Default is 1013.25.
#' 

#' @return 
#'
#'
#' @author  Istituto di Biometeorologia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibimet.cnr.it}
#' @keywords  wbgt_full
#' 
#' @export
#'
#'
#'
#'

wbgt_full=function(t,rh,tg,press=NULL) {
  ct$assign("t", as.array(t))
  ct$assign("rh", as.array(rh))
  ct$assign("tg", as.array(tg))
  if (is.null(press)){press=1013.25}
  ct$assign("press", as.array(press))
  ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=wbgt_full(t[i],rh[i],tg[i],press[0])};")
  res=ct$get("res")
  return(ifelse(res==9999,NA,res))
}