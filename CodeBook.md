<h1>Code Book for URI_HAR_Tidy_data.txt File</h1>

<h2>URI HAR Dataset</h2>

The URI HAR Dataset contains information on Human Activity Recognition Using Smartphones. The data was captured by 30 volunteers within
an age bracket of 19-48 years. Each of the volunteers performed 6 activities "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","STANDING","LAYING","SITTING" while
the data was adquired.

Signals were adquired by an accelerometer as well as using a gyroscope. This signals where represented both as a time series as a
in the frequency domain (FFT).

Further information about the Data Set is available on the projects main Web Page.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

<h2>URI HAR Tidy Data File Description</h2>

This document describes the content of the file URI_HAR_Tidy_data.txt, describing each of the variables that it contains.
The tidy data is created computed the mean of the different original measures grouped by activity and subject. So each variable
represents the mean of the measurement for that variable given a volunteer and an action.

- $ SubjectId : int - Identifies the volunteer that carried out the test, it takes a value within 1 and 30.

- $ Activity  : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","STANDING","LAYING","SITTING"

  - Describes the activity the volunteers were carrying on when samples when each sample was captured.

The rest of the 66 variables are means and standard deviations of the different signals measured by the acceloremeter as well
as the gyroscope, both in the time domain as in the frequency domain.

- Mean body acceletation on each of the axis.

 $ tBodyAcc.mean...X          : num  
 $ tBodyAcc.mean...Y          : num     
 $ tBodyAcc.mean...Z          : num  
 
- Standard deviation of the acceleration on each of the axis.
 
 $ tBodyAcc.std...X           : num  
 $ tBodyAcc.std...Y           : num     
 $ tBodyAcc.std...Z           : num 

- Mean gravity acceleration on each of the axis.
 
 $ tGravityAcc.mean...X       : num
 $ tGravityAcc.mean...Y       : num   
 $ tGravityAcc.mean...Z       : num  

- Standard deviation of the acceleration on each axis.

 $ tGravityAcc.std...X        : num
 $ tGravityAcc.std...Y        : num      
 $ tGravityAcc.std...Z        : num  

- Mean Jerk signal derived from the body's linear acceletation and angular velocity on each of the axis.  
 
 $ tBodyAccJerk.mean...X      : num  
 $ tBodyAccJerk.mean...Y      : num      
 $ tBodyAccJerk.mean...Z      : num  

- Standard deviation of the Jerk signal on each of the axis.
 
 $ tBodyAccJerk.std...X       : num  
 $ tBodyAccJerk.std...Y       : num        
 $ tBodyAccJerk.std...Z       : num 
 
- Mean body gyroscope signal on each of the axis.
 
 $ tBodyGyro.mean...X         : num  
 $ tBodyGyro.mean...Y         : num       
 $ tBodyGyro.mean...Z         : num 

- Standard deviation of the gyroscope signal on each of the axis.

 $ tBodyGyro.std...X          : num 
 $ tBodyGyro.std...Y          : num         
 $ tBodyGyro.std...Z          : num  
 
- Mean Jerk signal measured using the gyroscope signal on each of the axis.
 
 $ tBodyGyroJerk.mean...X     : num  
 $ tBodyGyroJerk.mean...Y     : num        
 $ tBodyGyroJerk.mean...Z     : num  

- Standard deviation of the Jerk signal on each of the axis measured by the gyroscope.

 $ tBodyGyroJerk.std...X      : num 
 $ tBodyGyroJerk.std...Y      : num        
 $ tBodyGyroJerk.std...Z      : num  

- Mean body acceleration magnitude and it's standard deviation.

 $ tBodyAccMag.mean..         : num         
 $ tBodyAccMag.std..          : num
 
- Mean gravity acceleracion magnitude and it's standard deviation.
 
 $ tGravityAccMag.mean..      : num       
 $ tGravityAccMag.std..       : num
 
- Mean body's Jerk signal and it's standard deviation measured by the accelerometer.
 
 $ tBodyAccJerkMag.mean..     : num       
 $ tBodyAccJerkMag.std..      : num

- Mean body's inertial Signal and it's standard deviation measured by the gyroscope.
 
 $ tBodyGyroMag.mean..        : num      
 $ tBodyGyroMag.std..         : num  
 
- Mean body's Jerk Signal and it's standard deviation measured by the gyroscope.

 $ tBodyGyroJerkMag.mean..    : num       
 $ tBodyGyroJerkMag.std..     : num  

- Mean frecuency signal of the body acceletation on each of the axis.
 
 $ fBodyAcc.mean...X          : num  
 $ fBodyAcc.mean...Y          : num      
 $ fBodyAcc.mean...Z          : num 
 
- Standard deviation of frecuency components of the body acceletation on each of the axis. 

 $ fBodyAcc.std...X           : num  
 $ fBodyAcc.std...Y           : num       
 $ fBodyAcc.std...Z           : num  
 
- Mean frequency signal derived from the Jerk Signal on each of the axis.
 
 $ fBodyAccJerk.mean...X      : num  
 $ fBodyAccJerk.mean...Y      : num  
 $ fBodyAccJerk.mean...Z      : num 
 
- Standard deviation of the frequency signal derived from the Jerk Signal on each of the axis.

 $ fBodyAccJerk.std...X       : num 
 $ fBodyAccJerk.std...Y       : num  
 $ fBodyAccJerk.std...Z       : num  
 
- Mean frequency signal on each of the axis computed by the gyroscope.

 $ fBodyGyro.mean...X         : num  
 $ fBodyGyro.mean...Y         : num  
 $ fBodyGyro.mean...Z         : num 

- Standard deviation of the frequency signal on each of the axis computed by the gyroscope.

 $ fBodyGyro.std...X          : num  
 $ fBodyGyro.std...Y          : num 
 $ fBodyGyro.std...Z          : num 

- Mean and Standard deviation of the frequency signal of the body acceleration.

 $ fBodyAccMag.mean..         : num  
 $ fBodyAccMag.std..          : num 

- Mean and Standard deviation of the frequency signal of the Jerk signal.
 
 $ fBodyBodyAccJerkMag.mean.. : num  
 $ fBodyBodyAccJerkMag.std..  : num  
 
- Mean and Standard deviation of the frequency signal of the body signal computed by the gyroscope.
 
 $ fBodyBodyGyroMag.mean..    : num 
 $ fBodyBodyGyroMag.std..     : num 
 
- Mean and Standard deviation of the frecuency signal of the Jerk signal computed by the gyroscope.

 $ fBodyBodyGyroJerkMag.mean..: num
 $ fBodyBodyGyroJerkMag.std.. : num  
