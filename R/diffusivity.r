#' diffusivity
#'
#' Calculate air diffusivity.
#'
#' @param tk   numeric Air temperature in degK.
#' @param pair numeric Air pressure in hPa. 
#' @return 
#'
#'
#' @author    Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  diffusivity 
#' 
#' @export
#'
#'
#'
#'

diffusivity=function(tk,pair) {
                         ct$assign("tk", as.array(tk))
                         ct$assign("pair", as.array(pair))
                         ct$eval("var res=[]; for(var i=0, len=tk.length; i < len; i++){ res[i]=diffusivity(tk[i],pair[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



