#' heat_risk_hexrgb_level
#'
#' Calculate the heat risk level for worker by using color codes returning hex code.
#'
#' @param wbgt numeric Wetbulb globe temperature index in degC.
#' @param cav numeric Clothing adjusted value due to worker clothing ensemble.
#' @param tresh numeric treshshold for heat risk in degC ( RAL or REL).
#' @return  hex code of color codes heat warning
#'
#' @author Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#'
#' @export
#'
#'
#'
#'

heat_risk_hexrgb_level=function(wbgt,cav,tresh)  {
  ct$assign("wbgt", as.array(wbgt))
  ct$assign("cav", as.array(cav))
  ct$assign("tresh", as.array(tresh))
  ct$eval("var res=[]; for(var i=0, len=wbgt.length; i < len; i++){ res[i]=heat_risk_hexrgb_level(wbgt[i],cav[0],tresh[0])};")
  res=ct$get("res")
  return(res)
}
