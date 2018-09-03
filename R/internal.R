
# I'm very interested in knowing your opinion of log files.
## Please let me know it at https://github.com/sherrisherry/cleandata/issues
## Even if you think of log files as useless, please let me know.

# A layout of content in log files, which lists the columns an operation affected and a table of scheme this operation used.
log_plan1 <- function(x, log, sche.names, sche.codes){
    sink(file=log$file,append = log$append, split = log$split) # divert output to file
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
log_plan2 <- function(x, cols, log, proc = 'i', method, details = FALSE){
    sink(file=log$file,append = log$append, split = log$split) # divert output to file
	proc <- switch(proc, i='Imputed', e='Encoded', p='Partitioned')
    cat(paste('Columns ', proc, ' by ', method, ':\n\t', sep=''))
	cols <- colnames(x[,cols, drop = FALSE])
    cat(cols, sep=', ')
    cat('\n\n')
	if(is.character(details))cat(paste('Details:\n', details, '\n\n', sep = ''))
    sink() # divert output back to console
}