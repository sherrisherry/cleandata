encode_ordinal<-function(x,order,none='',out.int=FALSE,full_print=TRUE,log=FALSE){
  if(is.null(dim(x)))stop('data frame degraded to vector, use df[ , , drop=FALSE]')
  if(full_print)print(summary(x))
  for(i in 1:ncol(x)){
    for(j in 1:length(order))levels(x[,i])[levels(x[,i])==order[j]] <- j
    levels(x[,i])[levels(x[,i])==none] <- 0
  }
  cat(paste('coded',i,'cols',j,'levels','\n'))
  if(full_print)print(summary(x))
  if(out.int){
    for(i in 1:ncol(x)){
      x[,i]<-as.character(x[,i])
      x[,i]<-as.integer(x[,i])}
    if(full_print)print(summary(x))
  }
  if(is.list(log)){
    sink(file=log$file,append = log$append, split = log$split) # divert output to file
    cat('Columns:\n\t')
    cat(colnames(x),sep=', ')
    cat('\nScheme:\n')
    encode<-0:length(order)
    names(encode)<-c(none,order)
    print(encode)
    cat('\n')
    sink() # divert output back to console
  }
  return(x)
}

encode_binary<-function(x,out.int=FALSE,full_print=TRUE,log=FALSE){
  if(is.null(dim(x)))stop('data frame degraded to vector, use df[ , , drop=FALSE]')
  if(full_print)print(summary(x))
  if(is.list(log)){
    map<-inspect_map(x,message=FALSE)
    cols<-map$factor_cols
    lvs<-map$factor_levels
    rm(map)
    for(i in 1:length(cols)){
      y<-x[,cols[[i]],drop=FALSE]
      for(j in 1:ncol(y))levels(y[,j])<-c(0,1)
      x[,cols[[i]]]<-y
      cat(paste('coded',j,'cols','\n'))
      sink(file=log$file,append = log$append, split = log$split) # divert output to file
      cat('Columns:\n\t')
      cat(cols[[i]],sep=', ')
      cat('\nScheme:\n')
      encode<-c(0,1)
      names(encode)<-lvs[[i]]
      print(encode)
      cat('\n')
      sink() # divert output back to console
    }
    rm(y)
  }
  else{
    for(j in 1:ncol(x))levels(x[,j])<-c(0,1)
    cat(paste('coded',j,'cols','\n'))
  }
  if(full_print)print(summary(x))
  if(out.int){
    for(i in 1:ncol(x)){
      x[,i]<-as.character(x[,i])
      x[,i]<-as.integer(x[,i])}
    if(full_print)print(summary(x))
  }
  return(x)
}
