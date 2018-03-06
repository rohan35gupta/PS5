#' Approximating definite integrals
#'
#' Finds the area under parabola using Trapezoidal or Simpsons Rule
#'
#' @param x A vector of values
#' @param y A vector of evaluated values with the same dimensionality as \code{x}.
#' @param z A vector of starting/ending values
#' @param rule A character that can be either "Trap" or "Simpson"
#'
#' @return A list with the elements
#'  \item{object}{The object of class Trapezoid or Simpson}
#'  \item{values}{The first and second object inputs}
#'  \item{result}{The result}
#' @author Rohan Gupta<\email{rohangupta@wustl.edu}>
#' @note This is a very simple function
#' @examples
#' 
#' myX <- c(1, 2, 3)
#' myY <- c(2, 4, 6)
#' myZ <- c(1, 3)
#' myRule <- "Trap"
#' integrateIt(myX, myY, myZ, myRule)
#' @rdname integrateIt
#' @aliases integrateIt
#' @export
setGeneric(name = "integrateIt",
           def = function(x, y, z, rule){
             standardGeneric("integrateIt")
           })

#' @export
setMethod(f = "integrateIt",
          definition = function(x, y, z, rule){
            a<-z[1]
            b<-z[2]
            h<-(b-a)/(length(x)-1)
            if(identical(rule,"Trap")){
              t<-h/2*(2*sum(y)-y[1]-y[length(y)])
              return(new("Trapezoid", x = x, y = y, result = t))
            }
            else if(identical(rule,"Simpson")){
              s<-h/3*(y[1]+y[length(y)])
              for(i in 2:(length(y)-1)){
                if(i%%2==0){
                  s<-s+h/3*4*y[i]
                }
                else if(i%%2==1){
                  s<-s+h/3*2*y[i]
                }
              }
              return(new("Simpson", x = x, y = y, result = s))
            }
          }
          )