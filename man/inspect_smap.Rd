\name{inspect_smap}
\alias{inspect_smap}
\title{Simply Classify The Columns of A Data Frame}
\usage{
inspect_smap(x, message = TRUE)
}
\description{
A simplified thus faster version of \code{inspect_map}.
}
\arguments{

\item{x}{The data frame}

\item{message}{Whether print the process.}
}
\value{
A list of \code{factor_cols} (vector), \code{num_cols} (vector), \code{char_cols} (vector), \code{ordered_cols} (vector), and \code{other_cols} (vector).

\item{\code{factor_cols}}{a vector, in which are the names of the factorial columns.}

\item{\code{num_cols}}{a vector, in which are the names of the numerical columns.}

\item{\code{char_cols}}{a vector, in which are the names of the string columns.}

\item{\code{ordered_cols}}{a vector, in which are the names of the ordered factorial columns.}

\item{\code{other_cols}}{a vector, in which are the names of the other columns.}
}
\examples{
# building a data frame
A <- as.factor(c('x', 'y', 'z'))
B <- as.ordered(c('z', 'x', 'y'))
C <- as.factor(c('y', 'z', 'x'))
D <- as.factor(c('i', 'j', 'k'))
E <- 5:7
df <- data.frame(A, B, C, D, E)

# inspection
dmap <- inspect_smap(df)
summary(dmap)
print(dmap)
}
\seealso{\code{\link{inspect_map}}}
\keyword{manip}
