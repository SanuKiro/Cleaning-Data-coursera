
The data came from a experiment where the data was collected from the accelerometers from the Samsung Galaxy S smartphone.         

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
# Code Book
## "Subjects"
30 volunteers within an age bracket of 19-48 years of the experiment
> 1  ->  volunteer 1     
> 2  ->  volunteer 2    
> ...         
> 30  ->  volunteer 30      
## "ActNames"
The activity names of what the volunteers participated in        
> Walk  ->   WALKING         
> WalkUp  ->   WALKING_UPSTAIRS  
> WalkDown  ->  WALKING_DOWNSTAIRS  
> Sit  ->  SITTING            
> Stand  ->  STANDING           
> Lay  ->  LAYING             

## "AVER tBodyAcc-mean()-X"
the average of the datas if the body linear acceleration derived in time on the x axis of the phone
## "AVER tBodyAcc-mean()-Y"
the average of the datas if the body linear acceleration derived in time on the y axis of the phone
## "AVER tBodyAcc-mean()-Z"
the average of the datas if the body linear acceleration derived in time on the z axis of the phone
## "AVER tGravityAcc-mean()-X"
the average of the datas if the body linear acceleration derived in time to obtain Jerk signals on the x axis of the phone
## (The descriptions of the variables below are equivalent. Note the 'f' to indicate frequency domain signals, the 'GravityAcc' to indicate the gravity linear acceleration signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) )
## "AVER tGravityAcc-mean()-Y"
## "AVER tGravityAcc-mean()-Z"
## "AVER tBodyAccJerk-mean()-X"
## "AVER tBodyAccJerk-mean()-Y"
## "AVER tBodyAccJerk-mean()-Z"
## "AVER tBodyGyro-mean()-X"
## "AVER tBodyGyro-mean()-Y"
## "AVER tBodyGyro-mean()-Z"
## "AVER tBodyGyroJerk-mean()-X"
## "AVER tBodyGyroJerk-mean()-Y"
## "AVER tBodyGyroJerk-mean()-Z"
## "AVER tBodyAccMag-mean()"
## "AVER tGravityAccMag-mean()"
## "AVER tBodyAccJerkMag-mean()"
## "AVER tBodyGyroMag-mean()"
## "AVER tBodyGyroJerkMag-mean()"
## "AVER fBodyAcc-mean()-X"
## "AVER fBodyAcc-mean()-Y"
## "AVER fBodyAcc-mean()-Z"
## "AVER fBodyAccJerk-mean()-X"
## "AVER fBodyAccJerk-mean()-Y"
## "AVER fBodyAccJerk-mean()-Z"
## "AVER fBodyGyro-mean()-X"
## "AVER fBodyGyro-mean()-Y"
## "AVER fBodyGyro-mean()-Z"
## "AVER fBodyAccMag-mean()"
## "AVER fBodyBodyAccJerkMag-mean()"
## "AVER fBodyBodyGyroMag-mean()"
## "AVER fBodyBodyGyroJerkMag-mean()"
## "AVER tBodyAcc-std()-X"
## "AVER tBodyAcc-std()-Y"
## "AVER tBodyAcc-std()-Z"
## "AVER tGravityAcc-std()-X"
## "AVER tGravityAcc-std()-Y"
## "AVER tGravityAcc-std()-Z"
## "AVER tBodyAccJerk-std()-X"
## "AVER tBodyAccJerk-std()-Y"
## "AVER tBodyAccJerk-std()-Z"
## "AVER tBodyGyro-std()-X"
## "AVER tBodyGyro-std()-Y"
## "AVER tBodyGyro-std()-Z"
## "AVER tBodyGyroJerk-std()-X"
## "AVER tBodyGyroJerk-std()-Y"
## "AVER tBodyGyroJerk-std()-Z"
## "AVER tBodyAccMag-std()"
## "AVER tGravityAccMag-std()"
## "AVER tBodyAccJerkMag-std()"
## "AVER tBodyGyroMag-std()"
## "AVER tBodyGyroJerkMag-std()"
## "AVER fBodyAcc-std()-X"
## "AVER fBodyAcc-std()-Y"
## "AVER fBodyAcc-std()-Z"
## "AVER fBodyAccJerk-std()-X"
## "AVER fBodyAccJerk-std()-Y"
## "AVER fBodyAccJerk-std()-Z"
## "AVER fBodyGyro-std()-X"
## "AVER fBodyGyro-std()-Y"
## "AVER fBodyGyro-std()-Z"
## "AVER fBodyAccMag-std()"
## "AVER fBodyBodyAccJerkMag-std()"
## "AVER fBodyBodyGyroMag-std()"
## "AVER fBodyBodyGyroJerkMag-std()"
