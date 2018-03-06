#' A Simpson object 
#' 
#' Object of class \code{Simpson} are created by the \code{integrateIt} function
#'
#' 
#' An object of the class "Simpson" has the following slots:
#' \itemize{
#' \item \code{x} The first input
#' \item \code{y} The second input 
#' \item \code{result} The result
#' }
#'
#' @author Rohan Gupta: \email{rohangupta@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method printSimpson 
#' @rdname Simpson
#' @export
setClass(Class = "Simpson",
         representation = representation(
           x = "numeric",
           y = "numeric",
           result = "numeric"
         ),
         prototype = prototype(
           x = c(),
           y = c(),
           result = c()
         )
)

#' @export
setMethod("initialize", "Simpson",
          function(.Object, ...){
            value = callNextMethod()
            return(value)
          }
) 

#' @rdname Simpson
#' @export 
setGeneric("printSimpson",
           function(object = "Simpson"){
             standardGeneric("printSimpson")
           }
)

#' @export
setMethod("printSimpson", "Simpson",
          function(object){
            return(object@result)
          }
)