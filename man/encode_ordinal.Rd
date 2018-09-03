\name{encode_ordinal}
\alias{encode_ordinal}
\title{
Encode Ordinal Data Into Integers
}
\description{
Encodes ordinal data into sequential integers by a given order.  Optionally records the result into a log file.
}
\usage{
encode_ordinal(x, order, none='', out.int=FALSE, full_print=TRUE, log=FALSE)
}
\arguments{
\item{x}{The data frame}

\item{order}{a vector of the ordered labels from low to high.}

\item{none}{The 'none'-but-not-'NA' level, which is always encoded to 0.}

\item{out.int}{Whether to convert encoded \code{x} to integers. Only set to \code{TRUE} when no \code{NA} in \code{x} because \code{NA}s in x causes error when converting to integers.  By default, the encoded \code{x} is factorial.}

\item{full_print}{When set to \code{FALSE}, only print minimum information.  A full output includes summary of \code{x} before and after encoding.}

\item{log}{Controls log files.  If \code{FALSE}, no log file.  To produce log files, pass a list of \code{file}, \code{append}, and \code{split} as arguments for \code{sink()}.}
}
\value{
An encoded data frame.
}
\section{Warning}{\code{x} can only be a data frame. Don't pass a vector to it.}
\examples{
# refer to vignettes if you want to use log files
message('refer to vignettes if you want to use log files')

# building a data frame
A <- as.factor(c('y', 'z', 'x', 'y', 'z'))
B <- as.factor(c('y', 'x', 'z', 'z', 'x'))
C <- as.factor(c('k', 'i', 'i', 'j', 'k'))
df <- data.frame(A, B, C)

# encoding
df[, 1:2] <- encode_ordinal(df[,1:2], order = c('z', 'x', 'y'))
df[, 3] <- encode_ordinal(df[, 3, drop = FALSE], order = c('k', 'j', 'i'))
print(df)
}
\seealso{\code{\link{inspect_map}}, \code{\link{sink}}}
\keyword{manip}
