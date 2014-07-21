# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" #download zip and manually extract contents.
importtestdata <- function () {
  labelfile <- "~/R/gettingandcleaning/UCI HAR Dataset/activity_labels.txt"
  xtestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/X_test.txt"
  testfeaturesfile <- "~/R/gettingandcleaning/UCI HAR Dataset/features.txt"
  ytestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/y_test.txt"
  subjecttestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/subject_test.txt"
  
  #import activity lables and rename the columns
  activity_labels <- read.table(labelfile, sep="") 
  colnames(activity_labels) <-c("class", "activity")
  
  #import subject test identifiers and rename the columns
  subjecttest <- read.table(subjecttestfile, sep="")
  colnames(subjecttest) <- c("subject")
  
  #import x test file and the features file. assign the features file as the names of the xtest file
  xtest <- read.table(xtestfile, sep="") 
  testfeatures <- read.table(testfeaturesfile, sep="")
  testfeatures <- as.character(t(testfeatures[,2]))
  colnames(xtest) <- c(testfeatures)
  
  #import y test file and rename column
  ytest <- read.table(ytestfile, sep="") 
  colnames(ytest) <- c("class")
  
  # combine all test data into single dataframe
  test <- cbind(subjecttest, ytest, xtest)
}

importtraindata <- function () {
  labelfile <- "~/R/gettingandcleaning/UCI HAR Dataset/activity_labels.txt"
  xtestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/X_test.txt"
  testfeaturesfile <- "~/R/gettingandcleaning/UCI HAR Dataset/features.txt"
  ytestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/y_test.txt"
  subjecttestfile <- "~/R/gettingandcleaning/UCI HAR Dataset/test/subject_test.txt"
  
  #import activity lables and rename the columns
  activity_labels <- read.table(labelfile, sep="") 
  colnames(activity_labels) <-c("class", "activity")
  
  #import subject test identifiers and rename the columns
  subjecttest <- read.table(subjecttestfile, sep="")
  colnames(subjecttest) <- c("subject")
  
  #import x test file and the features file. assign the features file as the names of the xtest file
  xtest <- read.table(xtestfile, sep="") 
  testfeatures <- read.table(testfeaturesfile, sep="")
  testfeatures <- as.character(t(testfeatures[,2]))
  colnames(xtest) <- c(testfeatures)
  
  #import y test file and rename column
  ytest <- read.table(ytestfile, sep="") 
  colnames(ytest) <- c("class")
  
  # combine all test data into single dataframe
  test <- cbind(subjecttest, ytest, xtest)
}
