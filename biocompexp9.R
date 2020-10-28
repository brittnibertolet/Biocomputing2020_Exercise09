#Exercise 9
setwd("/Users/kevinmichael/Desktop/BioComp/Test")


getcovar <- function(dir, yourcolumn){
  allcovars <- c()
  for(i in dir){
    yfile=read.csv(file=i, header=F, sep = ",")
    covar= (sd(yfile[,yourcolumn]))/(mean(yfile[,yourcolumn]))
    if(nrow(yfile<50)) {
      override = readline(prompt = "There are less than 50 observations, would you like to continue (Y/N)? ")
      if(override =="Y"){
        allcovars <- c(allcovars, covar)
      }
      else{
        next 
      }
    }
    else{
      c(allcovars, covar)
    }
  }
  return(allcovars)
}


your_dir <- list.files(path = "/Users/kevinmichael/Desktop/BioComp/Test")
getcovar(dir=your_dir, yourcolumn = 3)
