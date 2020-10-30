# function that takes a directory name as an argument called dir
# function reads data from each file in the directory and calculates
## standard deviation/mean for a column
## values should be returned as a vector
## set default of 50 obs, report an error if fewer than 50
## function includes NA data

files <- c()
lst <- vector("list", length(files))
names(lst) <- files

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

# ^ that didn't quite work...
# attempt 2

files <- dir("~/Desktop/Bioinformatics/Biocomputing2020_Exercise09/", pattern="*.csv")
lst <- vector("list", length(files))
names(lst) <- files

coeffvar <- function(d, colname){
  for (i in 1:length(files)){
  tmp <- read.csv(files[i], stringsAsFactors = FALSE)
  if (length(i$colname) < 50){
    print("ERROR; file has fewer than 50 observations")
  } else {
    sd(i$colname)/mean(i$colname)
  }
  }
}
coeffvar("~/Desktop/Bioinformatics/Biocomputing2020_Exercise09/",observations)
