inspect_map<-function(x,common=0,message=TRUE){
  factor_cols<-list()
  factor_levels<-list()
  char_cols<-c()
  ordered_cols<-c()
  num_cols<-c()
  other_cols<-c()
  for(i in colnames(x)){
    classifier <- paste(class(x[,i]), collapse = '.')
    switch(classifier,
           factor={
             l<-levels(x[,i])
             if(!length(factor_cols)){
               factor_levels[[i]]<-l
               factor_cols[[i]]<-i
             }
             else{
               for(j in 1:length(factor_levels)){
                 if(ifelse(common,sum(l %in% factor_levels[[j]])>common,all(l==factor_levels[[j]]))){
                   factor_cols[[j]]<-append(factor_cols[[j]],i)
                   if(common)factor_levels[[j]]<-union(l,factor_levels[[j]])
                   j<--5
                   break}
               }
               if(j!=-5){
                 factor_cols[[i]]<-i
                 factor_levels[[i]]<-l
               }
             }},
           character={char_cols<-append(char_cols,i)},
		   ordered.factor={ordered_cols<-append(ordered_cols,i)},
           {if(mode(x[,i])=='numeric')num_cols<-append(num_cols,i)
		     else other_cols<-append(other_cols,i)})
    if(message)cat(paste(i,classifier,'factors:',length(unlist(factor_cols)),'nums:',length(num_cols),'chars:',length(char_cols),'ordered:',length(ordered_cols),'others:',length(other_cols),"\n",sep = ' '))
  }
  return(list(factor_cols=factor_cols,factor_levels=factor_levels,num_cols=num_cols,char_cols=char_cols,ordered_cols=ordered_cols,other_cols=other_cols))
}

inspect_na<-function(x, top=ncol(x)){
  a<-sort(apply(is.na(x),2,sum),decreasing = TRUE)
  return(a[1:top])
}

inspect_smap <- function(x, message = TRUE){
  factor_cols<-c()
  char_cols<-c()
  ordered_cols<-c()
  num_cols<-c()
  other_cols<-c()
  for(i in colnames(x)){
    classifier <- paste(class(x[,i]), collapse = '.')
    switch(classifier,
           factor={factor_cols<-append(factor_cols,i)},
           character={char_cols<-append(char_cols,i)},
		   ordered.factor={ordered_cols<-append(ordered_cols,i)},
           {if(mode(x[,i])=='numeric')num_cols<-append(num_cols,i)
		     else other_cols<-append(other_cols,i)})
    if(message)cat(paste(i,classifier,'factors:',length(factor_cols),'nums:',length(num_cols),'chars:',length(char_cols),'ordered:',length(ordered_cols),'others:',length(other_cols),"\n",sep = ' '))
  }
  return(list(factor_cols=factor_cols,num_cols=num_cols,char_cols=char_cols,ordered_cols=ordered_cols,other_cols=other_cols))
}