\name{integrateIt}
\alias{integrateIt}
\alias{integrateIt,ANY-method}
\title{Approximating definite integrals}
\description{Finds the area under parabola using Trapezoidal or Simpsons Rule}
\usage{integrateIt(x)}
\arguments{
  \item{x}{A vector of values}
  \item{y}{A vector of evaluated values with the same dimensionality as        \code{x}.}
  \item{z}{A vector of starting/ending values}
  \item{rule}{A character that can be either "Trap" or "Simpson"}
}
\value{
  An object of class Trapezoid or Simpson containing \item{x}{The first        object input} \item{y}{The second object input} \item{result}{The
  result}
}
\author{
  Rohan Gupta
}
\note{
  This is a very simple function
}
\examples{
myX <- c(1, 2, 3)
myY <- c(2, 4, 6)
myZ <- c(1, 3)
myRule <- "Trap"
integrateIt(myX, myY, myZ, myRule)
}