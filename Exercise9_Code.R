#Challenge 1 
#usage:
#set working directory that contains the directory to perform function on
path_dir <-setwd("~/Documents/biocomputing/Exercises/Biocomputing2020_Exercise09/")
#Use function with # of column you wish to calc
calcCV(dir=path_dir,column=3)


#code for function:
#begin setting function that calculates the coefficient of
#variation of a column specified by user

calcCV <- function(dir,column){
  #read data from each file in the directory with a for loop
  allCV <- c()
  for(i in 1:nrow(dir)){
    #read files
    file=read.csv(file=i,header=TRUE,sep =",", stringsAsFactors = TRUE)
    #calculate Coefficient of variation as specified by second user input
    CV <- (sd(file[,column]))/(mean(file[,column]))
    #Report an error if any file has less than 50 observations
    #Allow usure to override this behavior
    #start if statement
    if(nrow(file<50)){
      ##Allow sure to override this behavior
      override=readline(prompt="Error: less than 50 observations in data set. Continue calculation?")
      if (override=="Yes"){
        allCV <- c(allCV,CV)
      }else{
        next
      }
    }else
      allCV <- c(allCV,CV)
  }
  #if the file doesnt have the right # of columns or if data includes NA's
override = readline(prompt = "NAs present or the # of right columns incorrect. Continue calculation?")
  if(override =="Yes"){
    allCV <- c(allCV,CV)
  }
##Return value as a vector
return(allCV)
}


  
