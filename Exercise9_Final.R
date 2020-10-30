#Function finds the coefficient of variation for each csv file within a directory if it meets certain criteria

#user specifies directory, column they would like to observe, and overideCriteria as true or false
#if overideCriteria is True, it will still calculate coefficient of variation for data sets with less than 50 observations
check_directory <- function(dir,specify_column,overideCriteria=F){
  
#finds the files within directory and creates a list of files: files.names
  file.names <- list.files(path=dir)
 
#after user specifies the full directory path, the working directory is set
  setwd(dir)
  
  
  #starts cycling through each file within the files list
  for(i in 1:length(file.names))
  {
    #"dat" is a temporary variable representative of the data from each csv file for each loop
    dat<-read.csv(file.names[i])
    
    #data than has to meet test criterion and be greater than 50 rows
    #if greater than 50, calculates and prints the coefficient of variation
    if (nrow(na.omit(dat))>50) 
    {
      testdata<-dat[,specify_column]
      print(file.names[i])
      print(sd(testdata)/mean(testdata))
    } 
    
    #if  it does not meet this criteria...
    #it will still calculate the coefficient of variation if overideCriteria is True
    else if (overideCriteria==T)
    {
      testdata<-dat[,specify_column]
      print(file.names[i])
      print(sd(testdata)/mean(testdata))
    }
    
    #finally, if neither are true, it will inform the user
    else
    {
      print(file.names[i])
      print("*This data set did not have at least 50 observations*")
    }
    
    #if the data is not a number and cannot be processed, it will report "NA"
  }
}

