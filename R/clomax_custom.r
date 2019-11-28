#' clomax_custom
#'
#' Calculate maximum custom clothing insulation value required to reach thermal comfort in moderate thermal environments ( -0.5 < PMV < 0.5) based on PMV ISO 7730.
#'
#' @param t numeric        Air temperature in degC.
#' @param rh numeric       Air Relative humidity in percentage.
#' @param wind numeric     Wind speed in meters per second.
#' @param tr numeric       Mean radiant temperature in degC.
#' @param M numeric        Metabolic rate of subject in W/mq.
#' @param W numeric        Mechanical work of subject in W/mq. Generally 0.
#' @param age   numeric    Age in years.
#' @param mbody numeric    Body Mass in kg. 
#' @param ht numeric       Heigth of subject in meters.
#' @param gender character Sex of the subject. Default is "male" otherwise "female".
#' @return 
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  clothing insulation 
#' 
#' @export
#'
#'


clomax_custom=function(t,rh,wind,trad,age,mbody,ht,gender="male")  {
  ct$assign("t", as.array(t))
  ct$assign("rh", as.array(rh))
  ct$assign("wind", as.array(wind))
  ct$assign("mtrad", as.array(trad))
  ct$assign("age", as.array(age))
  ct$assign("mbody", as.array(mbody))
  ct$assign("ht", as.array(ht))
  ct$assign("gender", as.array(gender))
  ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=clomax_custom(t[i],rh[i],wind[i],mtrad[i],age[0],mbody[0],ht[0],gender[0])};")
  res=ct$get("res")
  return(ifelse(res==9999,NA,res))
}

