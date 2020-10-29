#Exercise 9
setwd("/Users/kevinmichael/Desktop/BioComp/Test")

#first we define the name of the function, where the goal is to get the coefficient of variation for a user specified column
getcolumncovar <- function(dir, yourcolumn){
  #now we open an empty vector, allcovars for which to put each coeff of variance in
  allcovars <- c()
  #need to use a for loop to run through each file in the directory and then read in each file
  #file is is called yourfile, which we then calculate the coefficient of variation for
  for(i in dir){
    yourfile=read.csv(file=i, header=F, sep = ",")
    #now we take the second user input, yourcolumn, and find the SD/Mean of column that the user inputs a number for
    covar= (sd(yourfile[,yourcolumn]))/(mean(yourfile[,yourcolumn]))
    #including an if statement for when there are less than 50 observations in a file
    if(nrow(yfile<50)) {
      #if there are, the user is prompted with an override
      #if they choose Y for the override, the file is included, and if not this file is skipped
      override = readline(prompt = "There are less than 50 observations, would you like to continue (Y/N)? ")
      if(override =="Y"){
        #we add obersvations to final vector by combining the vector with the current files coefficient of variation
        allcovars <- c(allcovars, covar)
      }
      else{
        next 
      }
    }
    #if there are more than 50 observations, we simply just add the files CoV to the final allcovars vector 
    else{
      allcovars <- c(allcovars, covar)
    }
  }
  return(allcovars)
}

#specify the path of your directory 
your_dir <- list.files(path = "/Users/kevinmichael/Desktop/BioComp/Test")
#now call the function with your_dir as the directory of choice and which ever column the user wants
getcolumncovar(dir=your_dir, yourcolumn = 3)
