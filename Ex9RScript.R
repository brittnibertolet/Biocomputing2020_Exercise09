# function that takes a directory name as an argument called dir
# function reads data from each file in the directory and calculates
## standard deviation/mean for a column
## values should be returned as a vector
## set default of 50 obs, report an error if fewer than 50
## function includes NA data

# create an empty variable
files <- c()


coeffvar <- function(d, x){
  for (i in 1:length(files)){
    # read in files
    tmp <- read.csv(files[i], stringsAsFactors = FALSE)
    # if statement for obs <50
    if (length(i$x) < 50){
      print("ERROR; file has fewer than 50 observations")
      } else {
        sd(i$colname)/mean(i$colname)
      }
  }
  }

# run the function
coeffvar("~/Desktop/Bioinformatics/Biocomputing2020_Exercise09/",observations)
