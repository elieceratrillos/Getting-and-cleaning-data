Getting-and-cleaning-data
=========================
How the scripts work ?

1) download and create a folder for the data at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 																				
2) Setwd() for this folder and read the files in R																																							
3) Merge X_train and X_test data sets 																																													
4) Merge Y_train and Y_test data sets 																																													5) Merge subject_train and subject_test data sets 																																							
6) Read the activity_labels file																																																
7) Use activities names on the respective dataset
8) Merge all data sets																																																					
9) Read the features data set																																																		
10) Extract only mean and std measurements from features data set and apply that to all mergedData															
11) Get appropiate labels																																																				
12) Use appropiate labels																																																				
13) Merge and add Activity and Subject labels																																										
14) Create tidy data set with means

More information about the data set and project details is available here https://github.com/elieceratrillos/Getting-and-cleaning-data/blob/master/CodeBook.md
