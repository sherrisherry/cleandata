\name{encode_binary}
\alias{encode_binary}
\title{Encode Binary Data Into 0 and 1}
\usage{
encode_binary(x, out.int=FALSE, full_print=TRUE, log=FALSE)
}
\description{
Encodes binary data into 0 and 1. Optionally record the result into a log file.
}
\arguments{
\item{x}{The data frame}

\item{out.int}{Whether to convert encoded \code{x} to integers. Only set to \code{TRUE} when no \code{NA} in \code{x} because \code{NA}s in x causes error when converting to integers.  By default, the encoded \code{x} is factorial.}

\item{full_print}{When set to \code{FALSE}, only print minimum information.  A full output includes summary of \code{x} before and after encoding.}

\item{log}{The arguments for \code{sink()}. Accept a list of \code{file}, \code{append}, and \code{split}.  If \code{FALSE}, no log file.}
}
\value{
An encoded data frame.
}
\section{Warning}{\code{x} can only be a data frame. Don't pass a vector to it.}
\examples{
A <- as.factor(c('x', 'y', 'x'))
B <- as.factor(c('y', 'x', 'y'))
C <- as.factor(c('i', 'j', 'i'))
df <- data.frame(A, B, C)
df <- encode_binary(df)
print(df)
}
\seealso{\code{\link{inspect_map}}}
\keyword{manip}
