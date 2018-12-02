\name{encode_binary}
\alias{encode_binary}
\title{Encode Binary Data Into 0 and 1}
\usage{
encode_binary(x, out.int=FALSE, full_print=TRUE, log = eval.parent(in_log_default))
}
\description{
Encodes binary data into 0 and 1. Optionally records the result into a log file.
}
\arguments{
\item{x}{The data frame}

\item{out.int}{Whether to convert encoded \code{x} to integers. Only set to \code{TRUE} when no \code{NA} in \code{x} because \code{NA}s in x causes error when converting to integers.  By default, the encoded \code{x} is factorial.}

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
B <- as.factor(c('y', 'x', 'y'))
C <- as.factor(c('i', 'j', 'i'))
df <- data.frame(A, B, C)

# encoding
df <- encode_binary(df)
print(df)
}
\seealso{\code{\link{inspect_map}}, \code{\link{sink}}}
\keyword{manip}
