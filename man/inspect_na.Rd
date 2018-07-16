\name{inspect_na}
\alias{inspect_na}
\title{Find Out Which Columns Have Most NAs}
\usage{
inspect_na(x, top=ncol(x))
}
\description{
Return the names and numbers of NAs of columns that have top # (refer to argument \code{top}) most NAs.
}
\arguments{

\item{x}{The data frame}

\item{top}{The value of #.}
}
\value{
A named vector.
}
