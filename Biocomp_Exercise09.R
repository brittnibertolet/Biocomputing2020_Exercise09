setwd("~/Desktop/data/Biocomputing2020_Exercise09/")
#writing a custom function with dir as argument

#directory name is the argument "dir"
fun1= function(dir,col){ #calling the specific directory and specific column from files
  list.files(dir)  #listing all the files in the directory
  read.table(dir) #reading in files in directory
  is.na(dir)=F #making sure there's no NA in file
  dir[,col] #specifying work on a specific column
  if(nrow(dir)<50)  #producing the warning message, will return
  {warning("There are less than 50 observations")}
  else{
    if(nrow(dir)<50){stop("There are less than 50 observations")}
  }
  Mean<-mean(dir) #calculating the mean
  Stdev<-sd(dir)  #calculating stdev
  CoeffVar<-Stdev/Mean #calculating coeffvar
  return(CoeffVar)
}


#creating test files
col1<-c(1,26,5,3,3,5,7,34,23,4,3,45,34)
col2<-c(2,3,4,1,3,4,65,7,8,3,423,765,23)
test1<-data.frame(col1, col2)
col3<-c(2,5,4,3,7,6,5,8,9,6,5,3)
col4<-c(8,7,8,9,0,4,5,6,7,2,3,4)
test2<-data.frame(col3, col4)

fun1(test1,2)
