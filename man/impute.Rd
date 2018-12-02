\name{impute}
\alias{impute}
\alias{impute_mode}
\alias{impute_median}
\alias{impute_mean}
\title{Impute Missing Values}
\usage{
impute_mode(x,cols=colnames(x),idx=row.names(x),log = eval.parent(in_log_default))

impute_median(x,cols=colnames(x),idx=row.names(x),log = eval.parent(in_log_default))

impute_mean(x,cols=colnames(x),idx=row.names(x),log = eval.parent(in_log_default))
}
\description{
\code{impute_mode}:  Impute \code{NA}s by the modes of their corresponding columns.

\code{impute_median}:  Impute \code{NA}s by the medians of their corresponding columns.

\code{impute_mean}:  Impute \code{NA}s by the means of their corresponding columns.
}
\arguments{
\item{x}{The data frame to be imputed.}

\item{cols}{The index of columns of \code{x} to be imputed.}

\item{idx}{The index of rows of \code{x} to be used to calculate the values to impute \code{NA}s.  Use this parameter to prevent leakage.}

\item{log}{Controls log files.  To produce log files, assign it or the \code{log_arg} variable in the parent environment (dynamic scope) a list of arguments for \code{sink()}, such as \code{file}, \code{append}, and \code{split}.}
}
\value{
An imputed data frame.
}
\examples{
# refer to vignettes if you want to use log files
message('refer to vignettes if you want to use log files')

# building a data frame
A <- as.factor(c('y', 'x', 'x', 'y', 'z'))
B <- c(6, 3:6)
C <- 1:5
df <- data.frame(A, B, C)
df[3, 1] <- NA; df[2, 2] <- NA; df [5, 3] <- NA
print(df)

# imputation
df0 <- impute_mode(df, cols = 1:3)
print(df0)
df0 <- impute_mode(df, cols = 1:3, idx = 1:3)
print(df0)
df0 <- impute_median(df, cols = 2:3)
print(df0)
df0 <- impute_mean(df, cols = 2:3)
print(df0)
}
\seealso{\code{\link{inspect_map}}, \code{\link{sink}}}
\keyword{manip}
