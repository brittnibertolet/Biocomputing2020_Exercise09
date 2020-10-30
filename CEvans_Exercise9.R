
coeffvar_calc <- function(dir, column)
{
  # coeffvar_calc: function which takes a specified directory ...
  # ...and calculates the coefficient of variation on a user-specified column within that file
  
  setwd(dir) # changes our working directory to the one specified within the 
  filenames <- list.files() #creates a vector with the names of the files within the directory
  
  coeffvar <- numeric(length(list.files())) #preallocate the coefficient of variation vector with the number of files in the directory
  
  for (ii in 1:length(list.files()))  #for the number of files within the directory...
  {
    dat <- read.csv(filenames[ii], header = FALSE) # assumes that the files within the directory are csv files
    
    if (column > ncol(dat)) #conditional for when the column specified is too large for the file
    {
     print("The specified file doesn't have that many columns.")
    }
    else if (length(dat[,column]<50)) #conditional for too few observations
    {
      print("Warning: The number of observations is fewer than 50.") #warn the user of low # of observations
      print("To continue with the calculation, please enter '1' ") # give the user a chance to override the warning
      testval = scan(nmax = 1)  #user provides numeric input
      if (testval ==1) # if the user gives a "1" to the console (overrides)
      {
        coeffvar[ii] <- sd(dat[,column], na.rm = TRUE)/mean(dat[,column], na.rm = TRUE) 
        #calculates the coefficient of variation while removing/ignoring the NA values
        return(coeffvar) #returns this vector from the function
      }
    }
    else
    {
      coeffvar[ii] <- sd(dat[,column], na.rm = TRUE)/mean(dat[,column], na.rm = TRUE) 
      # Calculates the coefficient of variation, as above with regard with NAs
    }
  }
}


