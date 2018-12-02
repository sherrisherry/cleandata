partition_random <- function(x, name = 'Partition', train, val = 10^ceiling(log10(train))-train, test = TRUE, seed = FALSE, log = eval.parent(in_log_default)){
	if(is.null(dim(x)))stop(in_msg1)
	nrows <- nrow(x)
	if(nrows < 10)stop('This dataset is too small to be partitioned')
	test <- ifelse(test, 10^ceiling(log10(train))-train-val, 0)
	total <- train + val + test
	y <- data.frame(row.names = row.names(x))
	y[,name] <- NA
	train <- round(train/total*nrows)
	if(is.numeric(seed))set.seed(seed)
	y[sample(nrows,train), name] <- 1
	if(test){
		val <- round(val/total*nrows)
		if(is.numeric(seed))set.seed(seed)
		y[sample(row.names(y[is.na(y),,drop = FALSE]),val), name] <- 2
		y[is.na(y), name] <- 3
		test <- nrows - train - val
		label <- c('train','validation','test')
	}else{
		y[is.na(y), name] <- 2
		val <- nrows - train
		label <- c('train','validation')
	}
	y[,name] <- factor(y[,name], labels = label)
	msg <- paste('Train: ', round(train/nrows*100,2), '%, Validation: ', round(val/nrows*100,2), '%, Test: ', round(test/nrows*100,2), '%', sep='')
	cat(paste(msg,'\n'))
	if(is.list(log))
		in_log2(x = y, cols = name, log = log, proc = 'p', method = 'Random', details = msg)
	return(y)
}