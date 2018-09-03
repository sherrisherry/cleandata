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
\examples{
# building a data frame
A <- as.factor(c('y', 'x', 'x', 'y', 'z'))
B <- c(6, 3:6)
C <- 1:5
df <- data.frame(A, B, C)
df[3, 1] <- NA; df[2, 2] <- NA; df[4, 2] <- NA; df [5, 3] <- NA
print(df)

# inspection
a <- inspect_na(df)
print(a)
}
\keyword{manip}
