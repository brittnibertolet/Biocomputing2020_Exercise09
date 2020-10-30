# Exercise #9

# Define variables
totalobs<-0
x = dir

# Define a custom function
Covariation <- function(x){
  # read the files from the given input of the user directory
  input<-list.files(path=choose.dir(x))
  n=length(input)
  # create a for loop to read all the .csv files within the directory
  for(i in(1:n)){
  totalobs<-read.csv(input, header = TRUE)
  }
  average = mean(totalobs)
  stdDev = sd(totalobs)
  coefficientV = stdDev/average
  # Scan the files to find the amount of observations in all files
  observations <- scan(totalobs)
  
  if(observations<50){
    print("Warning - input of observations are less than 50, would you like to override?")
    usermsg<- readline(prompt = "Override? Y or N")
    }while (usermsg != Y){
      print("End")
  }else
      return(coefficientV)
}



