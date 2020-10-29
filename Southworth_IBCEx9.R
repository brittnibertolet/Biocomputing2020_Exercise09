# Chelsea Southworth
# Exercise 9

# Start small and work up

# Read data from a file, calculate the coefficient of variation (std dev divided by mean)
  # for a user-specified column
# If <50 observations (<50 rows in specified column), report an error warning that can be overriden by user
# Also consider, what the function should do if the data includes NAs
# So, do step 1, then add in <50 error warning, then data with NAs
# Return coefficients as a vector

# Then, do this for each file in a specified directory
# Directory name is an argument called 'dir', plus any other arguments needed for the task

# 1. Create some fake data with: >50 rows, no NAs; <50 rows, no NAs; >50 rows, NAs; <50 rows, NAs 
# 2. Code to read the data file into R
library(readr)
Ex9Data <- read_csv("~/Desktop/Ex9Data.csv")
View(Ex9Data)
# 3. Function to calculate coefficient of variation for a specified column
  # calculate standard deviation - works
sd(Ex9Data$more_noNA)
  # calculate mean - works
mean(Ex9Data$more_noNA)
  # divide sd by mean to give coefficient of variation
sd(Ex9Data$more_noNA)/mean(Ex9Data$more_noNA)

# assign desired column to "x"
x <- Ex9Data$more_noNA
# save CV calculations as a function
CV <- (sd(x)/mean(x))
CV

# 4. Use <50 rows
  # Tell R to give an error if <50 rows, but allow this error to be overriden with user input
  # use warning() to generate a warning that can be overriden


# 5. See what happens in R with NA rows
  # then troubleshoot and figure out how to correct it


CV <- function(x){
  (sd(x)/mean(x))*100
}

sd(Ex9Data$more_noNA)
mean(Ex9Data$more_noNA)

