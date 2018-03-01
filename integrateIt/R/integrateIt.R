#' Integrating trapezoids
#'
#' Finds the area under points using Trapezoidal
#'
#' @param x A vector of values
#' @param y A vector of values with the same dimensionality as \code{x}.
#'
#' @return An object of class Trapezoid containing
#'  \item{trapezoid}{The trapezoid}
#'  \item{x}{The first object input} 
#'  \item{y}{The second object input}
#'  \item{result}{The result}
#' @author Rohan Gupta
#' @note This is a very simple function
#' @examples
#' 
#' myX <- c(20, 3) 
#' myY <- c(-2, 4.1) 
#' integrateIt(myX, myY)
#' @rdname integrateIt
#' @aliases integrateIt,ANY-method
#' @export
setGeneric(name="integrateIt",
           def=function(x, y, a, b)
           {standardGeneric("integrateIt")}
)

#' @export
setMethod(f="integrateIt",
          definition=function(x, y, a, b){
            n<-length(x)-1
            h<-(b-a)/n
            area<-0
            area<-area+h/2*y[1]+h/2*y[n]
            for(i in 2:(n-1)){
              area<-area+h/2*y[i]
            }
            return(area)
          }
)