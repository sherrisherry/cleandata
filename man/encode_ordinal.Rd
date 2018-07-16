\name{encode_ordinal}
\alias{encode_ordinal}
\title{
Encode Ordinal Data Into Integers
}
\description{
Encodes ordinal data into sequential integers by a given order.  Optionally record the result into a log file.
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

\item{log}{The parameters for \code{sink()}. Accept a list of \code{file}, \code{append}, and \code{split}.  If \code{FALSE}, no log file.}
}
\value{
An encoded data frame.
}
\keyword{manip}
