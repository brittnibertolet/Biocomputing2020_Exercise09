# function that takes a directory name as an argument called dir
# function reads data from each file in the directory and calculates
## standard deviation/mean for a column
## values should be returned as a vector
## set default of 50 obs, report an error if fewer than 50
## function includes NA data

coeffvar <- function(d, colname){
  files <- dir(d, pattern = "*.csv")
  for (i in 1:nrow(files)){
    if (nrow(i$colname) < 50){
    print("ERROR; file has fewer than 50 observations")
  } else {
    sd(i$colname)/mean(i$colname)
    }
  }
}

coeffvar("~/Desktop/Bioinformatics/Biocomputing2020_Exercise09/", observations)

test <- c(1,2,3,4,5,6,7,8,9,10,11,10,9,8,7,6,5,4,3,2,1)
mean(test)
sd(test)
sd(test)/mean(test)
files <- dir("~/Desktop/Bioinformatics/Biocomputing2020_Exercise09/", pattern="*.csv")
dim(files)
