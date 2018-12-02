\name{encode_onehot}
\alias{encode_onehot}
\title{One-Hot Encoding}
\usage{
encode_onehot(x, colname.sep = '_', drop1st = FALSE,
    full_print=TRUE, log = eval.parent(in_log_default))
}
\description{
Encodes categorical data by One-hot encoding. Optionally records the result into a log file.
}
\arguments{
\item{x}{The data frame}

\item{colname.sep}{A character or string that acts as an divider in the names of the columns of encoding results.}

\item{drop1st}{Whether drop the 1st level of every encoded column.  The 1st level refers to the level that corresponds to 1 in a factor.}

\item{full_print}{When set to \code{FALSE}, only print minimum information.  A full output includes summary of \code{x} before and after encoding.}

\item{log}{Controls log files.  To produce log files, assign it or the \code{log_arg} variable in the parent environment (dynamic scope) a list of arguments for \code{sink()}, such as \code{file}, \code{append}, and \code{split}.}
}
\value{
An encoded data frame.
}
\section{Warning}{\code{x} can only be a data frame. Don't pass a vector to it.}
\examples{
# refer to vignettes if you want to use log files
message('refer to vignettes if you want to use log files')

# building a data frame
A <- as.factor(c('x', 'y', 'x'))
B <- as.factor(c('i', 'j', 'k'))
df <- data.frame(A, B)

# encoding
df0 <- encode_onehot(df)
df0 <- cbind(df, df0)
print(df0)
df0 <- encode_onehot(df, colname.sep = '-', drop1st = TRUE)
df0 <- cbind(df, df0)
rm(df)
print(df0)
}
\seealso{\code{\link{inspect_map}}, \code{\link{sink}}}
\keyword{manip}
