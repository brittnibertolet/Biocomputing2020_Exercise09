#user specifies directory and column
check_directory <- function(dir){
  file.names <- list.files(path=dir)
  print(file.names)
  for(i in 1:length(file.names)){
    print(file.names[i])
  }
}

