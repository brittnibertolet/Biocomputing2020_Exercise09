# Exercise 9

# 1. write function takes dir as argument

# Usage: calc(dir,col) 
# dir is directory with files you want to analyze
# col is specific column you want calculated
# function gets the coefficient of variation for each file in specified column

dir="/Users/jennalehn/Documents/rpractice/" #practice directory

# make function that uses dir as argument
calc=function(dir,col){

# get list of files in chosen directory
listfiles=list.files(dir)
listfiles

#read in files
content=length(listfiles)
for (i in 1:length(listfiles)){
  # make file name character, overrides every time
  char=c(dir,listfiles[i])
  # full path
  chars=paste0(char[1],char[2])
  readfile=read.csv(paste0(char[1],char[2]),header=FALSE)
  #Error if column number entry doesn't exist
  if (col>ncol(readfile)){
    cat("Error: choose column number below",ncol(readfile))
    col=scan(nmax)
  }else{
    cat(listfiles[i],"Column: ", ncol(readfile))
  }
  #Error if less than 50 observations
  if (nrow(readfile)<50){
    error=readline(prompt="Error: Need 50 observations for CV calculation. Override? (Y/N): ")
    if (error=="Y"){
      av=mean(readfile[,col],na.rm=TRUE) # find average, if NA present, still calculates
      dev=sd(readfile[,col],na.rm=TRUE) #find standard deviation
      cv=dev/av # find coefficient of variation
      content[i]=cv
    }else if (error=="N"){
      cat("Data not included ","\n")
    }else {
      cat("Error: Did not type (Y/N)","\n")
      break
    }
    }else{
      av=mean(readfile[,col],na.rm=TRUE) # find average
      dev=sd(readfile[,col],na.rm=TRUE) #find standard deviation
      cv=dev/av # find coefficient of variation
      content[i]=cv
    }
  }
  return(content)
  }


