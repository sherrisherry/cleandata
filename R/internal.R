
# inner variables
in_log_default <- quote(if(any('log_arg' %in% ls())&&is.list(log_arg))log_arg)
in_msg1 <- 'data frame degraded to vector, use df[ , , drop=FALSE]'

# I'm very interested in knowing your opinion of log files.
## Please let me know it at https://github.com/sherrisherry/cleandata/issues
## Even if you think of log files as useless, please let me know.

# A layout of content in log files, which lists the columns an operation affected and a table of scheme this operation used.
in_log1 <- function(x, log, sche.names, sche.codes){
    do.call(sink, log) # divert output to file
    cat('Columns:\n\t')
    cat(colnames(x),sep=', ')
    cat('\nScheme:\n')
    encode<-sche.codes
    names(encode)<-sche.names
    print(encode)
    cat('\n')
    sink() # divert output back to console
}

# A layout of content in log files, which lists the columns an operation affected, optionally with details of this operation.
in_log2 <- function(x, cols, log, proc = 'i', method, details = FALSE){
  do.call(sink, log) # divert output to file
	proc <- switch(proc, i='Imputed', e='Encoded', p='Partitioned')
    cat(paste('Columns ', proc, ' by ', method, ':\n\t', sep=''))
	cols <- colnames(x[,cols, drop = FALSE])
    cat(cols, sep=', ')
    cat('\n\n')
	if(is.character(details))cat(paste('Details:\n', details, '\n\n', sep = ''))
    sink() # divert output back to console
}

# mathematical mode
in_mode <- function(x){names(which.max(table(x)))}
