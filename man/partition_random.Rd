\name{partition_random}
\alias{partition_random}
\title{Partitioning A Dataset Randomly}
\usage{
partition_random(x, name = 'Partition', train,
    val = 10^ceiling(log10(train))-train, test = TRUE,
		seed = FALSE, log = eval.parent(in_log_default))
}
\description{
Designed to create a validation column. Optionally records the result into a log file.
}
\arguments{
\item{x}{The data frame}

\item{name}{The name of the validation column.}

\item{train}{The proportion of the training set.}

\item{val}{The proportion of the validation set.  If not given, a default value is calculated by assuming the sum of \code{train} and \code{val} is a nth power of 10.}

\item{test}{Whether to have test set.  If \code{TURE}, a default value is calculated by assuming the sum of \code{train} and \code{val} is a nth power of 10.}

\item{seed}{Whether to set a random seed.  If you want a reproducible result, pass a number to \code{seed} as the random seed.}

\item{log}{Controls log files.  To produce log files, assign it or the \code{log_arg} variable in the parent environment (dynamic scope) a list of arguments for \code{sink()}, such as \code{file}, \code{append}, and \code{split}.}
}
\value{
A partitioned column.
}
\section{Warning}{\code{x} can only be a data frame. Don't pass a vector to it.}
\examples{
# refer to vignettes if you want to use log files
message('refer to vignettes if you want to use log files')

# building a data frame
A <- 2:16
B <- letters[12:26]
df <- data.frame(A, B)

# partitioning
df0 <- partition_random(df, train = 7)
df0 <- cbind(df, df0)
print(df0)
df0 <- partition_random(df, train = 7, val = 2)
df0 <- cbind(df, df0)
print(df0)
}
\seealso{\code{\link{sink}}}
\keyword{manip}
