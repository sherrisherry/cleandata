\name{impute}
\alias{impute}
\alias{impute_mode}
\alias{impute_median}
\alias{impute_mean}
\title{Impute Missing Values}
\usage{
impute_mode(x,cols=colnames(x),idx=row.names(x),log=FALSE)

impute_median(x,cols=colnames(x),idx=row.names(x),log=FALSE)

impute_mean(x,cols=colnames(x),idx=row.names(x),log=FALSE)
}
\description{
\code{impute_mode}:  Impute \code{NA}s by the modes of their corresponding columns.

\code{impute_median}:  Impute \code{NA}s by the medians of their corresponding columns.

\code{impute_mean}:  Impute \code{NA}s by the means of their corresponding columns.
}
\arguments{
\item{x}{The data frame to be imputed.}

\item{cols}{The index of columns of \code{x} to be imputed.}

\item{idx}{The index of rows of \code{x} to be used to calculate the values to impute \code{NA}s.}

\item{log}{The parameters for \code{sink()}. Accept a list of \code{file}, \code{append}, and \code{split}.  If \code{FALSE}, no log file.}
}
\value{
An imputed data frame.
}
\keyword{manip}
