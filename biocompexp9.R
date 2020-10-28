#Exercise 9
setwd("/Users/kevinmichael/Desktop/BioComp/Test")


getcovar <- function(dir, yourcolumn){
  allcovars <- c()
  for(i in dir){
    yfile=read.csv(file=i, header=F, sep = ",")
    covar= (sd(yfile[,yourcolumn]))/(mean(yfile[,yourcolumn]))
    c(allcovars, covar)
  }
  return(allcovars)
}
  

your_dir <- list.files(path = "/Users/kevinmichael/Desktop/BioComp/Test")
getcovar(dir=your_dir, yourcolumn = 3)



