encode_ordinal<-function(x,order,none='',out.int=FALSE,full_print=TRUE, log = eval.parent(in_log_default)){
  if(is.null(dim(x)))stop(in_msg1)
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
  if(is.list(log))in_log1(x = x, log = log, sche.names = c(none,order), sche.codes = 0:length(order))
  return(x)
}

encode_binary<-function(x,out.int=FALSE,full_print=TRUE, log = eval.parent(in_log_default)){
  if(is.null(dim(x)))stop(in_msg1)
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
	  in_log1(x = x, log = log, sche.names = lvs[[i]], sche.codes = c(0,1))
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

encode_onehot<-function(x, colname.sep = '_', drop1st=FALSE, full_print=TRUE, log = eval.parent(in_log_default)){
  if(is.null(dim(x)))stop(in_msg1)
  if(sum(is.na(x)))warning('NAs are ignored in encoding')
  if(full_print)print(summary(x))
  cols<-colnames(x)
  encoded<-data.frame(row.names = row.names(x))
  for(i in cols){
  lvs<-if(drop1st) levels(x[,i])[2:nlevels(x[,i])] else levels(x[,i])
  encoded[,paste(i,lvs,sep=colname.sep)]<-0L
  for(j in lvs)encoded[x[,i]==j,paste(i,j,sep=colname.sep)]<-1L
  cat(paste('coded col',i,';',length(lvs),'levels','\n'))
  }
  if(full_print)print(apply(encoded,2,sum))
  if(is.list(log))
	in_log2(x = x, log = log, proc = 'e', method = 'Onehot', details = paste('Template of New Column Names: oldname', colname.sep, 'level; Dropping 1st Level: ', drop1st, sep=''))
  return(encoded)
}