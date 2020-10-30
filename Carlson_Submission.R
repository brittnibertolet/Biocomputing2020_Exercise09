coefficientofvariationfunction= function(dir, colname, yes){ #dir is the path for the desired directory #colname is the name of the desired column in all of the files #yes is the option for users to include warnings
  #make list of all directory files
  filenames=list.files(path=dir)

  #make vector for final values
  finalvector <- c()
  
  #set up option for user to include warnings
  warning== yes
  
  #read in each file and perform calculations, then assign the calculated value to the final matrix
  for (i in 1:length(filenames)) {
  
  filecontent=read.csv(filenames[i]) #Read in each file
  standarddev=sd(filecontent$colname) #Find standard dev of the given column input by the user
  mean=mean(filecontent$colname) #Find mean of the given column input by the user
  coeffofvariation=standarddev/mean #Find coefficient of variation
  finalvector[i]=coeffofvariation #Assign coefficient of variation to the corresponding position in the final vector

  if warning == yes{
    if length(filenames[i]) <= 50{
    print("Warning")
    }
  }
  }

}