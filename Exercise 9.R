#Exercise 9
#Matthew Licursi

test <- data.frame(col1<-rep(c(15,10), times<5))
write.csv(file<-"/Users/matthewlicursi/Desktop/Biocomputing R/Biocomputing2020_Exercise09", x=test, row.names=F, quote=F)

#Set arguments to test things
dir=""
columnName=""
i=""
overrideCriteria=F

#Start Function
listCVs<-function(dir, columnName, overrideCriteria=F){
  listoffiles<-list.files(dir)
for(i in l:nrow(dir)){
  Readfiles<-read.csv(file=i,header=TRUE,sep=",",stringsAsFactors = TRUE)
  CoefficientOfVariation<-(sd(Readfiles[,columnName]))/mean(Readfiles[,columnName]) #Calculates the coefficient of variation using the standard deviation divided by the mean
  if(nrow(Readfiles<50)){ #Loop for if less than 50 observations, gives a warning and prompts user to decide if they want to continue.
    Override<-readline(prompt = "Warning: Data has less than 50 observations. Type 'Continue' to override")
    if(override=="Continue"){
      CompiledCVs<-c(CompiledCVs,CoefficientOfVariation)
    }else{
      next
  }else{
    CompiledCVs<-c(CompiledCVs,CoefficientOfVariation)
}
  }
}
}

if(is.na(x)=TRUE){ #Used if the data has missing values or NA values
  Override<-readline(prompt = "File has missing values. Write 'Continue' to override.")
  if(Override=="Continue"){
    else
      next
  }
}
return(CompiledCVs) #Returns the value as a vector








