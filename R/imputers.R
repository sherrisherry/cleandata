# impute NAs in factorial columns by the mode of corresponding columns
impute_mode<-function(x,cols=colnames(x),idx=row.names(x),log=FALSE){
  if(is.null(dim(x)))stop('data frame degraded to vector, use df[ , , drop=FALSE]')
  for(i in 1:length(cols))x[is.na(x[,cols[i]]),cols[i]]<-names(which.max(table(x[idx,cols[i]])))
  if(is.list(log))log_plan2(x = x, cols = cols, log = log, method = 'Mode')
  return(x)
}

# impute NAs in numerical columns by the median of corresponding columns
impute_median<-function(x,cols=colnames(x),idx=row.names(x),log=FALSE){
  if(is.null(dim(x)))stop('data frame degraded to vector, use df[ , , drop=FALSE]')
  for(i in 1:length(cols))x[is.na(x[,cols[i]]),cols[i]]<-stats::median(x[idx,cols[i]],na.rm = TRUE)
  if(is.list(log))log_plan2(x = x, cols = cols, log = log, method = 'Median')
  return(x)
}

# impute NAs in numerical columns by the mean of corresponding columns
impute_mean<-function(x,cols=colnames(x),idx=row.names(x),log=FALSE){
  if(is.null(dim(x)))stop('data frame degraded to vector, use df[ , , drop=FALSE]')
  for(i in 1:length(cols))x[is.na(x[,cols[i]]),cols[i]]<-mean(x[idx,cols[i]],na.rm = TRUE)
  if(is.list(log))log_plan2(x = x, cols = cols, log = log, method = 'Mean')
  return(x)
}
