setClass(Class="Trapezoid",
         representation = representation(
           trapezoid = "numeric",
           x = "numeric",
           y = "numeric"
         ),
         prototype = prototype(
           trapezoid = c(),
           x = c(),
           y = c()
         )
         )

setGeneric("integrateIt",
           function(object="Trapezoid") {
             standardGeneric("integrateIt")
           })

setMethod("integrateIt", "Trapezoid",
          function(object){
            
          })