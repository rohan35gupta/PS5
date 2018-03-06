library(devtools)
library(roxygen2)
setwd("/Users/rohangupta/Documents/WUSTL/SP2018/Pol Sci/PS5")
current.code<-as.package("integrateIt")
load_all(current.code)
document(current.code)
check(current.code)
install(pkg=current.code, local=TRUE)
build(current.code, path=getwd())
printTrapezoid
getMethod(printTrapezoid, "Trapezoid")
x1<-c(1,2,3)
y1<-c(2,4,6)
z1<-c(1,3)
rule1<-"Trap"
allObj1<-integrateIt(x1, y1, z1, rule1)
allObj1
printTrapezoid(allObj1)
printSimpson
getMethod(printSimpson, "Simpson")
x2<-c(1,2,3)
y2<-c(2,4,6)
z2<-c(1,3)
rule2<-"Simpson"
allObj2<-integrateIt(x1, y1, z2, rule2)
allObj2
printSimpson(allObj2)