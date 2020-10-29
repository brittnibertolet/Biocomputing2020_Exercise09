# Tutorial 9 Function

#Set working directory

setwd("/Users/isaaclickona/tut9/Biocomputing2020_Exercise09")


dir = "/Users/isaaclickona/testerdirectory/"

cofunc <- function(dir) {
  #First, find all the files in the directory and their names
  filenames = list.files(dir)
  filenames
  
  #Get user specified column 
  message <- "Please choose which column to perform calculations on"
  message
  usercol <- scan(nmax=1)
  #Read in the files using the names from the filenames vector
  filedata <- filenames
  for(i in 1:length(filenames)){
    #get file name as a character"
    conc <- c(dir,filenames[i])
    concy <- paste0(conc[1],conc[2])
    tempvar <- read.csv(paste0(conc[1],conc[2]), header=FALSE)
    filedata[i] <- tempvar
    
  }
}