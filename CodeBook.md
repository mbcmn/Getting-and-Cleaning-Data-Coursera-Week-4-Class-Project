---
title: "Codebook.md"
output:
  html_document: default
  pdf_document: default
---


# Johns Hopkins Data Science Specialization Getting and Cleaning Data Coursera Week 4 Class Project


## The Data

The data processed is from the Human Activity Recognition Using Smartphones Data Set database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.<br>

More information on the project can be found on UCI Machine Learning Repository:<br> <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones><br>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. <br>

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. <br>

For each record it is provided<br>

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.<br>
- Triaxial Angular velocity from the gyroscope. <br>
- A 561-feature vector with time and frequency domain variables. <br>
- Its activity label. <br>
- An identifier of the subject who carried out the experiment.<br>

The original dataset can be found here:<br>
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip><br>



## Transformations


1) Activity (Y_train.txt and Y_test.txt), column names (features.txt) and subject ids (subject_train.txt and subject_test.txt) have been joined/added to teh test and train dataset.<br>

2) Train and test datasets have been merged<br>

3) Activity labels have been added based on activity_labels.txt<br>

4) Variables have been named using features.txt<br>



## Variables

The tidy dataset (tidy_dataset.csv) in this repo contains the following variables:<br>

======================<br>
Name: 	      subject_id<br>
Type:		      Integer, 1-6<br>
Description:	ID of participant subjects<br>
<br>
1<br>
2<br>
3<br>
4<br>
5<br>
6<br>


======================<br>
Name:	        activity<br>
Type:		      Factor with six levels<br>
Description:	Name of activity recorded<br>
<br>
1	  WALKING<br>
2   WALKING_UPSTAIRS<br>
3  	WALKING_DOWNSTAIRS<br>
4   SITTING<br>
5   STANDING<br>
6   LAYING<br>
<br>

======================<br>
Name: <br>
tBodyAcc-mean-X_mean<br>
tBodyAcc-mean-Y_mean<br>
tBodyAcc-mean-Z_mean<br>
tGravityAcc-mean-X_mean<br>
tGravityAcc-mean-Y_mean<br>
tGravityAcc-mean-Z_mean<br>
tBodyAccJerk-mean-X_mean<br>
tBodyAccJerk-mean-Y_mean<br>
tBodyAccJerk-mean-Z_mean<br>
tBodyGyro-mean-X_mean<br>
tBodyGyro-mean-Y_mean<br>
tBodyGyro-mean-Z_mean<br>
tBodyGyroJerk-mean-X_mean<br>
tBodyGyroJerk-mean-Y_mean<br>
tBodyGyroJerk-mean-Z_mean<br>
tBodyAccMag-mean_mean<br>
tGravityAccMag-mean_mean<br>
tBodyAccJerkMag-mean_mean<br>
tBodyGyroMag-mean_mean<br>
tBodyGyroJerkMag-mean_mean<br>
fBodyAcc-mean-X_mean<br>
fBodyAcc-mean-Y_mean<br>
fBodyAcc-mean-Z_mean<br>
fBodyAcc-meanFreq-X_mean<br>
fBodyAcc-meanFreq-Y_mean<br>
fBodyAcc-meanFreq-Z_mean<br>
fBodyAccJerk-mean-X_mean<br>
fBodyAccJerk-mean-Y_mean<br>
fBodyAccJerk-mean-Z_mean<br>
fBodyAccJerk-meanFreq-X_mean<br>
fBodyAccJerk-meanFreq-Y_mean<br>
fBodyAccJerk-meanFreq-Z_mean<br>
fBodyGyro-mean-X_mean<br>
fBodyGyro-mean-Y_mean<br>
fBodyGyro-mean-Z_mean<br>
fBodyGyro-meanFreq-X_mean<br>
fBodyGyro-meanFreq-Y_mean<br>
fBodyGyro-meanFreq-Z_mean<br>
fBodyAccMag-mean_mean<br>
fBodyAccMag-meanFreq_mean<br>
fBodyBodyAccJerkMag-mean_mean<br>
fBodyBodyAccJerkMag-meanFreq_mean<br>
fBodyBodyGyroMag-mean_mean<br>
fBodyBodyGyroMag-meanFreq_mean<br>
fBodyBodyGyroJerkMag-mean_mean<br>
fBodyBodyGyroJerkMag-meanFreq_mean<br>
tBodyAcc-std-X_mean<br>
tBodyAcc-std-Y_mean<br>
tBodyAcc-std-Z_mean<br>
tGravityAcc-std-X_mean<br>
tGravityAcc-std-Y_mean<br>
tGravityAcc-std-Z_mean<br>
tBodyAccJerk-std-X_mean<br>
tBodyAccJerk-std-Y_mean<br>
tBodyAccJerk-std-Z_mean<br>
tBodyGyro-std-X_mean<br>
tBodyGyro-std-Y_mean<br>
tBodyGyro-std-Z_mean<br>
tBodyGyroJerk-std-X_mean<br>
tBodyGyroJerk-std-Y_mean<br>
tBodyGyroJerk-std-Z_mean<br>
tBodyAccMag-std_mean<br>
tGravityAccMag-std_mean<br>
tBodyAccJerkMag-std_mean<br>
tBodyGyroMag-std_mean<br>
tBodyGyroJerkMag-std_mean<br>
fBodyAcc-std-X_mean<br>
fBodyAcc-std-Y_mean<br>
fBodyAcc-std-Z_mean<br>
fBodyAccJerk-std-X_mean<br>
fBodyAccJerk-std-Y_mean<br>
fBodyAccJerk-std-Z_mean<br>
fBodyGyro-std-X_mean<br>
fBodyGyro-std-Y_mean<br>
fBodyGyro-std-Z_mean<br>
fBodyAccMag-std_mean<br>
fBodyBodyAccJerkMag-std_mean<br>
fBodyBodyGyroMag-std_mean<br>
fBodyBodyGyroJerkMag-std_mean<br>
<br>
Type:		      Numeric, -0.9976661 - 0.9745087<br>
Description:	Mean of the standard deviation and of the mean of the raw 3-axial (XZY), jerk signal and magnitude of the signal
              from the accelerometer and gyroscope:<br>
<br>
tBodyAcc-XYZ  <br>
tGravityAcc-XYZ  <br>
tBodyAccJerk-XYZ  <br>
tBodyGyro-XYZ  <br>
tBodyGyroJerk-XYZ  <br>
tBodyAccMag  <br>
tGravityAccMag  <br>
tBodyAccJerkMag  <br>
tBodyGyroMag  <br>
tBodyGyroJerkMag  <br>
fBodyAcc-XYZ  <br>
fBodyAccJerk-XYZ  <br>
fBodyGyro-XYZ  <br>
fBodyAccMag <br>
fBodyAccJerkMag  <br>
fBodyGyroMag  <br>
fBodyGyroJerkMag  <br>



## Source

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


