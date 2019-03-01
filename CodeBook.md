Code Book
======

Introduction
------
This dataset contains data extracted from Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Data preparation
------
Raw data source is UCI Machine Learning Repository entry (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). `run_analysis.R` file contains R script that allows to download and extract data.

Extracted data is available in `data.txt` file, first row contains names of columns, records are separated by spaces.

Columns
------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

* subject - subject ID 
* activity - activity for which measurement was conducted
* tBodyAcc.mean...X - Accelerometer body measurement mean value in X axis
* tBodyAcc.mean...Y - Accelerometer body measurement mean value in Y axis
* tBodyAcc.mean...Z - Accelerometer body measurement mean value in Z axis
* tBodyAcc.std...X - Accelerometer body measurement standard deviation value in X axis
* tBodyAcc.std...Y - Accelerometer body measurement standard deviation value in Y axis
* tBodyAcc.std...Z - Accelerometer body measurement standard deviation value in Z axis
* tGravityAcc.mean...X - Accelerometer gravity measurement mean value in X axis
* tGravityAcc.mean...Y - Accelerometer gravity measurement mean value in Y axis
* tGravityAcc.mean...Z - Accelerometer gravity measurement mean value in Z axis
* tGravityAcc.std...X - Accelerometer gravity measurement standard deviation value in X axis
* tGravityAcc.std...Y - Accelerometer gravity measurement standard deviation value in Y axis
* tGravityAcc.std...Z - Accelerometer gravity measurement standard deviation value in Z axis
* tBodyAccJerk.mean...X - Accelerometer body jerk measurement mean value in X axis
* tBodyAccJerk.mean...Y - Accelerometer body jerk measurement mean value in Y axis
* tBodyAccJerk.mean...Z - Accelerometer body jerk measurement mean value in Z axis
* tBodyAccJerk.std...X - Accelerometer body jerk measurement standard deviation value in X axis
* tBodyAccJerk.std...Y - Accelerometer body jerk measurement standard deviation value in Y axis
* tBodyAccJerk.std...Z - Accelerometer body jerk measurement standard deviation value in Z axis
* tBodyGyro.mean...X - Gyroscope body measurement mean value in X axis
* tBodyGyro.mean...Y - Gyroscope body measurement mean value in Y axis
* tBodyGyro.mean...Z - Gyroscope body measurement mean value in Z axis
* tBodyGyro.std...X - Gyroscope body measurement standard deviation value in X axis
* tBodyGyro.std...Y - Gyroscope body measurement standard deviation value in Y axis
* tBodyGyro.std...Z - Gyroscope body measurement standard deviation value in Z axis
* tBodyGyroJerk.mean...X - Gyroscope body jerk measurement mean value in X axis
* tBodyGyroJerk.mean...Y - Gyroscope body jerk measurement mean value in Y axis
* tBodyGyroJerk.mean...Z - Gyroscope body jerk measurement mean value in Z axis
* tBodyGyroJerk.std...X - Gyroscope body jerk measurement standard deviation value in X axis
* tBodyGyroJerk.std...Y - Gyroscope body jerk measurement standard deviation value in Y axis
* tBodyGyroJerk.std...Z - Gyroscope body jerk measurement standard deviation value in Z axis
* tBodyAccMag.mean.. - Accelerometer body measurement magnitude mean value
* tBodyAccMag.std.. - Accelerometer body measurement magnitude standard deviation value
* tGravityAccMag.mean.. - Accelerometer gravity measurement magnitude mean value
* tGravityAccMag.std.. - Accelerometer gravity measurement magnitude standard deviation value
* tBodyAccJerkMag.mean.. - Accelerometer body jerk measurement magnitude mean value
* tBodyGyroMag.mean.. - Gyroscope body measurement magnitude mean value
* tBodyGyroMag.std.. - Gyroscope body measurement magnitude standard deviation value
* tBodyGyroJerkMag.mean.. - Gyroscope body jerk measurement magnitude mean value
* tBodyGyroJerkMag.std.. - Gyroscope body jerk measurement magnitude standard deviation value
* fBodyAcc.mean...X - FFT Accelerometer body measurement mean value in X axis
* fBodyAcc.mean...Y - FFT Accelerometer body measurement mean value in Y axis
* fBodyAcc.mean...Z - FFT Accelerometer body measurement mean value in Z axis
* fBodyAcc.std...X - FFT Accelerometer body measurement standard deviation value in X axis
* fBodyAcc.std...Y - FFT Accelerometer body measurement standard deviation value in Y axis
* fBodyAcc.std...Z - FFT Accelerometer body measurement standard deviation value in Z axis
* fBodyAcc.meanFreq...X - FFT frequency Accelerometer body measurement mean value in X axis
* fBodyAcc.meanFreq...Y - FFT frequency Accelerometer body measurement mean value in Y axis
* fBodyAcc.meanFreq...Z - FFT frequency Accelerometer body measurement mean value in Z axis
* fBodyAccJerk.mean...X - FFT Accelerometer body jerk measurement mean value in X axis
* fBodyAccJerk.mean...Y - FFT Accelerometer body jerk measurement mean value in Y axis
* fBodyAccJerk.mean...Z - FFT Accelerometer body jerk measurement mean value in Z axis
* fBodyAccJerk.std...X - FFT Accelerometer body jerk measurement standard deviation value in X axis
* fBodyAccJerk.std...Y - FFT Accelerometer body jerk measurement standard deviation value in Y axis
* fBodyAccJerk.std...Z - FFT Accelerometer body jerk measurement standard deviation value in Z axis
* fBodyAccJerk.meanFreq...X - FFT frequency Accelerometer body jerk measurement mean value in X axis
* fBodyAccJerk.meanFreq...Y - FFT frequency Accelerometer body jerk measurement mean value in Y axis
* fBodyAccJerk.meanFreq...Z - FFT frequency Accelerometer body jerk measurement mean value in Z axis
* fBodyGyro.mean...X - FFT Gyroscope body measurement mean value in X axis
* fBodyGyro.mean...Y - FFT Gyroscope body measurement mean value in Y axis
* fBodyGyro.mean...Z - FFT Gyroscope body measurement mean value in Z axis
* fBodyGyro.std...X - FFT Gyroscope body measurement standard deviation value in X axis
* fBodyGyro.std...Y - FFT Gyroscope body measurement standard deviation value in Y axis
* fBodyGyro.std...Z - FFT Gyroscope body measurement standard deviation value in Z axis
* fBodyGyro.meanFreq...X - FFT frequency Gyroscope body measurement mean value in X axis
* fBodyGyro.meanFreq...Y - FFT frequency Gyroscope body measurement mean value in Y axis
* fBodyGyro.meanFreq...Z - FFT frequency Gyroscope body measurement mean value in Z axis
* fBodyAccMag.mean.. - FFT Accelerometer body measurement magnitude mean value
* fBodyAccMag.std.. - FFT Accelerometer body measurement magnitude standard deviation value
* fBodyAccMag.meanFreq.. - FFT frequency Accelerometer body measurement magnitude mean value
* fBodyBodyAccJerkMag.mean.. - FFT Accelerometer body jerk measurement magnitude mean value
* fBodyBodyAccJerkMag.std.. - FFT Accelerometer body jerk measurement magnitude standard deviation value
* fBodyBodyAccJerkMag.meanFreq.. - FFT frequency Accelerometer body jerk measurement magnitude mean value
* fBodyBodyGyroMag.mean.. - FFT Gyroscope body measurement magnitude mean value
* fBodyBodyGyroMag.std.. - FFT Gyroscope body measurement magnitude standard deviation value
* fBodyBodyGyroMag.meanFreq.. - FFT frequency Gyroscope body measurement magnitude standard deviation value
* fBodyBodyGyroJerkMag.mean.. - FFT Gyroscope body jerk measurement magnitude mean value
* fBodyBodyGyroJerkMag.std.. - FFT Gyroscope body jerk measurement magnitude standard deviation value
* fBodyBodyGyroJerkMag.meanFreq.. - FFT frequency Gyroscope body jerk measurement magnitude mean value
