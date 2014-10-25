setwd("/Users/eliecertrillos/Desktop/uci")

//read X_train and X_test data sets and merge them 
trainX = read.table("./train/X_train.txt");testX = read.table("./test/X_test.txt")
  mergedX = rbind(trainX,testX)
//read Y_train and Y_test data sets and merge them 
trainY = read.table("./train/Y_train.txt");testY = read.table("./test/Y_test.txt")
  mergedY = rbind(trainY,testY)
//read subject_train and subject_test data sets and merge them
subjectTrain = read.table("./train/subject_train.txt");subjectTest = read.table("./test/subject_test.txt")
mergedSubjects = rbind(subjectTrain,subjectTest)

//read the activity_labels
activities <- read.table("./activity_labels.txt")
//use activities names on respective dataset
mergedY = factor(mergedY$V1,labels=activities$V2)
// merge all data sets
mergedData = cbind(mergedX,mergedY,mergedSubjects)

//read the features data set
features = read.table("./features.txt")
//extra only mean and std measurements and apply that to all mergedData
featureExtract = grep('-mean|-std',features[,2])
mergedData = mergedData[,featureExtract]

//get appropiate labels
features = features[featureExtract,]
//use appropiate labels 
colnames(mergedData)[c(1:79)]=c('tBodyAcc-mean()-X','tBodyAcc-mean()-Y','tBodyAcc-mean()-Z','tBodyAcc-std()-X',
                               'tBodyAcc-std()-Y','tBodyAcc-std()-Z','tGravityAcc-mean()-X','tGravityAcc-mean()-Y',
                               'tGravityAcc-mean()-Z','tGravityAcc-std()-X','tGravityAcc-std()-Y','tGravityAcc-std()-Z',
                               'tBodyAccJerk-mean()-X','tBodyAccJerk-mean()-Y','tBodyAccJerk-mean()-Z','tBodyAccJerk-std()-X',
                               'tBodyAccJerk-std()-Y','tBodyAccJerk-std()-Z','tBodyGyro-mean()-X','tBodyGyro-mean()-Y',
                               'tBodyGyro-mean()-Z','tBodyGyro-std()-X','tBodyGyro-std()-Y','tBodyGyro-std()-Z','tBodyGyroJerk-mean()-X',
                               'tBodyGyroJerk-mean()-Y','tBodyGyroJerk-mean()-Z','tBodyGyroJerk-std()-X','tBodyGyroJerk-std()-Y',
                               'tBodyGyroJerk-std()-Z','tBodyAccMag-mean()','tBodyAccMag-std()','tGravityAccMag-mean()',
                               'tGravityAccMag-std()','tBodyAccJerkMag-mean()','tBodyAccJerkMag-std()','tBodyGyroMag-mean()',
                               'tBodyGyroMag-std()','tBodyGyroJerkMag-mean()','tBodyGyroJerkMag-std()','fBodyAcc-mean()-X',
                               'fBodyAcc-mean()-Y','fBodyAcc-mean()-Z','fBodyAcc-std()-X','fBodyAcc-std()-Y','fBodyAcc-std()-Z',
                               'fBodyAcc-meanFreq()-X','fBodyAcc-meanFreq()-Y','fBodyAcc-meanFreq()-Z','fBodyAccJerk-mean()-X',
                               'fBodyAccJerk-mean()-Y','fBodyAccJerk-mean()-Z','fBodyAccJerk-std()-X','fBodyAccJerk-std()-Y',
                               'fBodyAccJerk-std()-Z','fBodyAccJerk-meanFreq()-X','fBodyAccJerk-meanFreq()-Y','fBodyAccJerk-meanFreq()-Z',
                               'fBodyGyro-mean()-X','fBodyGyro-mean()-Y','fBodyGyro-mean()-Z','fBodyGyro-std()-X','fBodyGyro-std()-Y',
                               'fBodyGyro-std()-Z','fBodyGyro-meanFreq()-X','fBodyGyro-meanFreq()-Y','fBodyGyro-meanFreq()-Z','fBodyAccMag-mean()',
                               'fBodyAccMag-std()','fBodyAccMag-meanFreq()','fBodyBodyAccJerkMag-mean()','fBodyBodyAccJerkMag-std()','fBodyBodyAccJerkMag-meanFreq()',
                               'fBodyBodyGyroMag-mean()','fBodyBodyGyroMag-std()','fBodyBodyGyroMag-meanFreq()','fBodyBodyGyroJerkMag-mean()',
                               'fBodyBodyGyroJerkMag-std()','fBodyBodyGyroJerkMag-meanFreq()')
//merge and add Activity and Subject labels
mergedData = cbind(mergedData,mergedY,mergedSubjects)
colnames(mergedData)[c(80,81)]=c("Activity","Subject")
//create tidy data set with means
tidyData= aggregate(mergedData,by=list(activity=mergedData$Activity,subject=mergedData$Subject),mean)
tidy= write.table(tidyData,file="tidyData.txt",sep=",",row.name=FALSE)


