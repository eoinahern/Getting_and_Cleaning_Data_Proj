

getset <- function(directory, file)
{
  
  ##navigate to file check if file exists. then, read in data
  originaldir <- getwd()
  founddir <- paste("UCI HAR Dataset/", directory, sep ="/")
  
  
  if(!file.exists(founddir))
  {
    stop("can't find directory", call.=TRUE)
  }
  
  setwd(founddir)
  
  if(!file.exists(file))
  {
    stop("cant find file!", call. = TRUE)
  }
  
  dataset <- read.table(file)
  setwd(originaldir)
  dataset
 
}

mergesets <- function(x,y,subject) 
{
  dataset <- cbind(x, y,subject)
  dataset
}

searchmeanstd <- function()
{
  currentdir <-getwd()

  if(!file.exists("UCI HAR Dataset"))
  {
    stop("can't find directory", call.=TRUE)
  }
  
  tempdir <- setwd("UCI HAR Dataset")
  
  ## read in relevant column no's
  
  features <- read.table("features.txt")
  features <- features[,2]
  x <- vector(mode = "numeric", length = 0)
  newnames <- vector(mode ="character", length = 0)
  length <- length(features)

   for(i in 1:length)
  {
   if(grepl("mean()",as.character(features[i])) | grepl("std()",as.character(features[i]))
      | grepl("Mean",as.character(features[i]))  | grepl("meanFreq()",as.character(features[i])) )
    {
      x <- append(x, i)
      newnames <- append(newnames, cleanactivitynames(as.character(features[i])))
    }
  }
  
  setwd(currentdir)

  number <- as.numeric(tail(x, n = 1))
  
  x <- append(x, number  + 1)
  x <- append(x,  number + 2)
  newnames <-append(newnames, "Activity")
  newnames <- append(newnames, "Subject")
  
  trimmedset <- data.frame(x, newnames)
  trimmedset
}


cleanactivitynames <- function(featuretitle)
{
   cleanedname  <- gsub("-|\\(\\)", "", featuretitle)
   firstchar <- substr(featuretitle,1,1)
   if(firstchar == "t")
   {
     cleanedname <- sub(firstchar, "Time", cleanedname)
   }
   else if(firstchar == "f")
   {
     cleanedname <- sub(firstchar, "Freq", cleanedname)
   }
   
   cleanedname
  
}

switchnumforkey <- function(newcompset)
{
  
  
  ##have to iterate over the dataset again.
  
  for(i in 1:nrow(newcompset))
  {
    
     checkvar <- as.numeric(newcompset[i, "Activity"])
     
     ##horrible looking code. but switch doesnt seem to be trivial to create in R
     ##and iam running out of time.
     
     if(checkvar == 1)
     {
       newcompset[i, 87] <- "WALKING"
     }
     else if(checkvar == 2)
     {
       newcompset[i, 87] <- "WALKING_UPSTAIRS"
     }
     else if(checkvar == 3)
     {
       newcompset[i,87] <- "WALKING_DOWNSTAIRS"
     }
     else if(checkvar == 4)
     {
       newcompset[i,87] <- "SITTING"
     }
     else if(checkvar == 5)
     {
       
       newcompset[i,87] <- "STANDING"
     }
     else if(checkvar == 6)
     {
       newcompset[i,87] <- "LAYING"
     }
    
  }
  
  
  newcompset
}


main <- function()
{
  xtrain <- getset("train", "X_train.txt")
  ytrain <- getset("train", "y_train.txt")
  subject_train <-getset("train", "subject_train.txt")
  
  trainset <- mergesets(xtrain,ytrain,subject_train)
  
  xtest <- getset("test", "X_test.txt")
  ytest <- getset("test", "y_test.txt")
  subject_test <- getset("test", "subject_test.txt")
  
  testset <- mergesets(xtest,ytest,subject_test)
  compset <- rbind(trainset,testset)
  trimmedset <- searchmeanstd()
  
  ##trimmedset contains a data frame with the column indices we want
  ##plus the descriptive activity names required in step 3.
  
  newcompset <- compset[, trimmedset[,1]]
  colnames(newcompset) <- trimmedset[,2]
  
  #part 4's dataset
  completedata <- switchnumforkey(newcompset)
  
  headers <- as.character(trimmedset[,2])
  count <- nrow(trimmedset)
  headers <-head(headers, count -2)
  
  
  part5dataset <- createAverages(headers, completedata)
  write.table(part5dataset, file = "./step5dataset.txt", row.name = FALSE)
}

createAverages <- function(headers, completedataset)
{
    splitset <- split(completedataset, list(completedataset$Subject, completedataset$Activity))
    sapply(splitset, function(x) colMeans(x[,headers]))
}


