This Codebook describes the variables and data along with the modifications made to the data. 

The data in this Codebook represents data collected from the accelerometers from the Samsung Galaxy S smartphone carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


The data for this project is from this source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The full description of the data is also available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data set includes:

Activity_labels.txt : Which has the Activity name that corresponds to the Activity number

Features_info.txt : Which has detailed information about the features and signals selected

Features.txt : Includes all the features and its names

README.txt : Explains how the experiments were performed

X_train.txt : Training set

y_train.txt : Training labels

subject_train.txt : Each row identifies the subject who performed the training activity for each window sample.

X_test.txt : Test set

y_test.txt : Test labels

subject_test.txt : Each row identifies the subject who performed the test activity for each window sample.

Inertial Signals/total_acc_x_train.txt : The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

Inertial Signals/body_acc_x_train.txt : The body acceleration signal obtained by subtracting the gravity from the total acceleration.

Inertial Signals/body_gyro_x_train.txt : The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Modifications:

1) The training and test data sets were merged to one data set
2) The measurements on the mean and standard deviation were extracted
3) The names from the activity_labels.txt were used to replace the activity numbers
4) The column labels were changed for more appropriate labels
5) A tidy data set was created with the average of each variable for each activity and subject
