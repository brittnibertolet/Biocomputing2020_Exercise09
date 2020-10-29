#exercise 9 
#write a function that returns the coefficient of variation from a selected column in a group of files from a directory
setwd("/Users/austinbriggs/Desktop/Tutorials/exercise9")

#name function
columncovar <- function(dir, column){
  #open empty vector to place coefficient of variables at end of for loop
  allcovars <- c()
  #use for loop to loop through each file in directory
  #two inputs: file and column, to caluclate coefficient of variation
  for(i in dir){
    file=read.csv(file=i, header = FALSE, sep = ",")
    #Divide standard deviation by mean of file columns to find coefficient of variation
    covar = (sd(file[,column]))/mean(file[,coulumn])
    #include if statement for less than 50 observations to ensure strong data analysis
    if(nrow(file<50)) {
      #include override prompt if user would like to analyze data with less than 50 observations
      override= readline(prompt = "There are less than 50 observations. Would you like to continue? (Y/N)")
      if(override == "Y"){
        #combine vectors into final output listing all coefficient of variations for each selected column from each file
        allcovars <- c(allcovars, covar)
      }
      else{
        next
      }
    }
    else{
      allcovars <- c(allcovars, covar)
    }
  }
  
  #include override prompt if column data is missing values
  if(is.na(x)=TRUE) {
    override= readline(prompt = "There are missing values in the file. Would you like to continue? (Y/N)")
    if(override == "Y"){
      else
        next
    }
  }
  return(allcovars)
}

#insert path to directory into shorthand
mydir <- list.files(path = "/Users/austinbriggs/Desktop/Tutorials/exercise9")
#use function to obtain data
columncovar(dir=mydir, column=2)
