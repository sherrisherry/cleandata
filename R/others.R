
wh_dict <- function(x, attr, value){
  if(missing(attr) || missing(value))stop('Please supply attr and value')
  lv <- unique(x[, attr])
  dictionary <- data.frame(lv)
  colnames(dictionary) <- attr
  dictionary$Keys <- NA
  for(i in 1:length(lv))dictionary[i, 'Keys'] <- as.character(x[x[,attr]==lv[i], value][1])
  return(dictionary)
}
