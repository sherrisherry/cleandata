\name{wh_dict}
\alias{wh_dict}
\title{Create Data Dictionary from Data Warehouse}
\usage{
wh_dict(x, attr, value)
}
\description{
Stacks part of a data frame and repeat the other columns to fit the result of stacking. Optionally records the result into a log file.
}
\arguments{
\item{x}{The data frame}

\item{attr}{The index of the column in \code{x} to be explained.}

\item{value}{The index of the column in \code{x} as the explanation in the \code{Keys} column of the dictionary.}
}
\value{
A 2-column data frame, in which the \code{Keys} column stores the explanation of the values in \code{x[, attr]}.
}
\section{Warning}{\code{x} can only be a data frame. Don't pass a vector to it.}
\examples{
# refer to vignettes if you want to use log files
message('refer to vignettes if you want to use log files')

# building a data frame
A <- c('i', 'j', 'i', 'k', 'j')
B <- as.factor(c('x', 'y', 'x', 'z', 'y'))
C <- 1:5
df <- data.frame(A, B, C)
print(df)

# encoding
dict <- wh_dict(df, attr = 'B', value = 'A')
print(dict)
}
\seealso{\code{\link{inspect_map}}, \code{\link{encode}}}
\keyword{manip}
