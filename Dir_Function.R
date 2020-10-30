# Tutorial 9 Function
#Usage: cofunc(dir, usercol)
#dir is a directory specified with the absolute path and must end in a "/"
#usercol is the number column the user would like analayzed in all the files contained in dir

#dir = "/Users/isaaclickona/testerdirectory/" #Just used to practice/check work

#Create function with argument dir
cofunc <- function(dir,usercol) {
  
  #First, find all the files in the directory and their names
  filenames = list.files(dir)
  filenames

  #Read in the files using the names from the filenames vector
  filedata <- 1:length(filenames)
  for(i in 1:length(filenames)){
    #get file name as a character"
    conc <- c(dir,filenames[i])
    concy <- paste0(conc[1],conc[2])
    #Read file and store in temporary variable that will be overwritten
    tempvar <- read.csv(paste0(conc[1],conc[2]), header=TRUE)
    
    if (usercol > ncol(tempvar)){ #         #Make sure table has enough columns or prompt user to re-pick
      paste("Please choose a column between 1 and", ncol(tempvar))
      usercol <- scan(nmax)
    } else {
      print("...")
  }
    
    
    if (nrow(tempvar)<50){ #Check that there are 50 observations
      answer <- readline(prompt = "Error: Accurate CV requires 50 observations. Override? (Y/N): ")
      
      if (answer == "y" || answer == "Y"){
       avg = mean(tempvar[,usercol], na.rm=TRUE)
       stdv = sd(tempvar[,usercol], na.rm = TRUE)
       cv <- stdv/avg
       filedata[i] <- cv
     }else {
         print("Goodbye!")
      }

    }else {
       avg = mean(tempvar[,usercol], na.rm=TRUE)
       stdv = sd(tempvar[,usercol], na.rm= TRUE)
       cv <- stdv/avg
       filedata[i] <- cv
    }
  }
  return(filedata)
  }














