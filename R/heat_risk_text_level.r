#' heat_risk_text_level
#'
#' Calculate the heat risk level for worker by using color codes returning textual information.
#'
#' @param wbgt numeric Wetbulb globe temperature index in degC
#' @param cav numeric Clothing adjusted value due to worker clothing ensemble
#' @param tresh numeric treshshold for heat risk in degC ( RAL or REL)
#'
#' @return 
#'
#' @author Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#'
#' @keywords  
#' @export
#'
#'
#'
#'

heat_risk_text_level=function(wbgt,cav,tresh)  {
  ct$assign("wbgt", as.array(wbgt))
  ct$assign("cav", as.array(cav))
  ct$assign("tresh", as.array(tresh))
  ct$eval("var res=[]; for(var i=0, len=wbgt.length; i < len; i++){ res[i]=heat_risk_text_level(wbgt[i],cav[0],tresh[0])};")
  res=ct$get("res")
  return(res)
}
