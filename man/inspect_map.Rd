\name{inspect_map}
\alias{inspect_map}
\title{Classify The Columns of A Data Frame}
\usage{
inspect_map(x, common = 0, message = TRUE)
}
\description{
Provide a map for imputation and encoding.
}
\arguments{

\item{x}{The data frame}

\item{common}{a non-negative numerical parameter, if 2 factorial columns share more than 'common' levels, they share the same scheme. 0 means all the levels should be the same for 2 factorial columns to share the same scheme.}

\item{message}{Whether print the process.}
}
\value{
A list of \code{factor_cols} (list), \code{factor_levels} (list), \code{num_cols} (vector), \code{char_cols} (vector), \code{ordered_cols} (vector), and \code{other_cols} (vector).

\item{\code{factor_cols}}{a list, in which each member is a vector of the names of the factorial columns that share the same scheme. The name of a vector is the same as its 1st member. Refer to the argument \code{common} for more information about scheme.}

\item{\code{factor_levels}}{a list, in which each member is a scheme of the factorial columns. The name of a scheme is the same as its corresponding vector in \code{factor_cols}.}

\item{\code{num_cols}}{a vector, in which are the names of the numerical columns.}

\item{\code{char_cols}}{a vector, in which are the names of the string columns.}

\item{\code{ordered_cols}}{a vector, in which are the names of the ordered factorial columns.}

\item{\code{other_cols}}{a vector, in which are the names of the other columns.}
}
\examples{
A <- as.factor(c('x', 'y', 'z'))
B <- as.ordered(c('z', 'x', 'y'))
C <- as.factor(c('y', 'z', 'x'))
D <- as.factor(c('i', 'j', 'k'))
E <- 5:7
df <- data.frame(A, B, C, D, E)
dmap <- inspect_map(df)
summary(dmap)
print(dmap)
}
\seealso{\code{\link{encode}}, \code{\link{impute}}}
\keyword{manip}
