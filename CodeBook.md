---
title: "CodeBook"
author: "Pamela Hernandez"
date: "Sunday, September 27, 2015"
output: html_document
---
The first part of this document repeats the information provided with the original dataset.  The second part describes changes made to the original data names and additional data elements that were created as a result of the processing.

SECTION 1:  From the documentation of the original dataset:

1A:  GENERAL DESCRIPTION OF THE ORIGINAL DATA FILES AND THE DATA CONTAINED IN EACH

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within -1,1].
- Each feature vector is a row on the text file.

1B:  DATA DICTIONARY FOR ORIGINAL DATA FILES:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


SECTION 2:  CHANGES TO COLUMN NAMES/DATA LABELS IN PROCESSED DATA

This table shows the relationship between names in the original dataset and names in the derived/processed dataset:

<TABLE FRAME=VOID CELLSPACING=0 COLS=4 RULES=NONE BORDER=0>
  <COLGROUP><COL WIDTH=161><COL WIDTH=227><COL WIDTH=130><COL WIDTH=383></COLGROUP>
	<TBODY>
		<TR>
			<TD WIDTH=161 HEIGHT=17 ALIGN=LEFT><b>original data</b></TD>
			<TD WIDTH=227 ALIGN=LEFT><BR></TD>
			<TD WIDTH=130 ALIGN=LEFT><b>processed data</b></TD>
			<TD WIDTH=383 ALIGN=LEFT><BR></TD>
		</TR>
		<TR>
			<TD HEIGHT=17 ALIGN=LEFT>table/file</TD>
			<TD ALIGN=LEFT><BR></TD>
			<TD ALIGN=LEFT>table/file</TD>
			<TD ALIGN=LEFT><BR></TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>activity_labels.txt</TD>
			<TD ALIGN=LEFT>[column 2]</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>activity</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>y_test.txt and y_train.txt</TD>
			<TD ALIGN=LEFT>[column 1]</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>subject_number</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-X,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_X,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-X,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_X,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-X,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_X,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-X,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_X,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Y,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Y,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Y,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Y,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Y,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Y,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Y,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Y,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Z,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Z,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Z,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Z,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Z,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Z,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-arCoeff()-Z,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_arCoeff_Z,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-correlation()-X,Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_correlation_X,Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-correlation()-X,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_correlation_X,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAcc-correlation()-Y,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometer_correlation_Y,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-X,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_X,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-X,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_X,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-X,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_X,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-X,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_X,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Y,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Y,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Y,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Y,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Y,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Y,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Y,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Y,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Z,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Z,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Z,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Z,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Z,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Z,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-arCoeff()-Z,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_arCoeff_Z,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-correlation()-X,Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_correlation_X,Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-correlation()-X,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_correlation_X,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAcc-correlation()-Y,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometer_correlation_Y,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-X,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_X,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-X,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_X,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-X,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_X,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-X,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_X,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Y,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Y,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Y,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Y,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Y,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Y,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Y,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Y,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Z,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Z,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Z,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Z,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Z,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Z,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-arCoeff()-Z,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_arCoeff_Z,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-correlation()-X,Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_correlation_X,Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-correlation()-X,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_correlation_X,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerk-correlation()-Y,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerk_correlation_Y,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-X,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_X,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-X,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_X,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-X,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_X,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-X,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_X,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Y,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Y,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Y,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Y,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Y,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Y,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Y,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Y,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Z,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Z,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Z,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Z,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Z,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Z,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-arCoeff()-Z,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_arCoeff_Z,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-correlation()-X,Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_correlation_X,Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-correlation()-X,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_correlation_X,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyro-correlation()-Y,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscope_correlation_Y,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-X,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_X,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-X,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_X,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-X,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_X,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-X,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_X,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Y,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Y,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Y,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Y,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Y,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Y,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Y,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Y,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Z,1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Z,1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Z,2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Z,2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Z,3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Z,3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-arCoeff()-Z,4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_arCoeff_Z,4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-correlation()-X,Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_correlation_X,Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-correlation()-X,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_correlation_X,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerk-correlation()-Y,Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerk_correlation_Y,Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-arCoeff()1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_arCoeff1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-arCoeff()2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_arCoeff2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-arCoeff()3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_arCoeff3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccMag-arCoeff()4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerMagnitude_arCoeff4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-arCoeff()1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_arCoeff1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-arCoeff()2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_arCoeff2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-arCoeff()3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_arCoeff3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tGravityAccMag-arCoeff()4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeGravityAccelerometerMagnitude_arCoeff4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-arCoeff()1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_arCoeff1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-arCoeff()2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_arCoeff2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-arCoeff()3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_arCoeff3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyAccJerkMag-arCoeff()4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyAccelerometerJerkMagnitude_arCoeff4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-arCoeff()1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_arCoeff1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-arCoeff()2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_arCoeff2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-arCoeff()3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_arCoeff3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroMag-arCoeff()4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeMagnitude_arCoeff4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-arCoeff()1</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_arCoeff1</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-arCoeff()2</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_arCoeff2</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-arCoeff()3</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_arCoeff3</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>tBodyGyroJerkMag-arCoeff()4</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>TimeBodyGyroscopeJerkMagnitude_arCoeff4</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-maxInds-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_maxInds_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-maxInds-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_maxInds_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-maxInds-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_maxInds_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-meanFreq()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_meanFreq_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-meanFreq()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_meanFreq_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-meanFreq()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_meanFreq_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-skewness()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_skewness_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-kurtosis()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_kurtosis_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-skewness()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_skewness_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-kurtosis()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_kurtosis_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-skewness()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_skewness_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-kurtosis()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_kurtosis_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAcc-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometer_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-maxInds-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_maxInds_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-maxInds-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_maxInds_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-maxInds-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_maxInds_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-meanFreq()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_meanFreq_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-meanFreq()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_meanFreq_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-meanFreq()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_meanFreq_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-skewness()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_skewness_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-kurtosis()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_kurtosis_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-skewness()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_skewness_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-kurtosis()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_kurtosis_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-skewness()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_skewness_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-kurtosis()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_kurtosis_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccJerk-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerJerk_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mean()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mean_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mean()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mean_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mean()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mean_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-std()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_std_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-std()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_std_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-std()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_std_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mad()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mad_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mad()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mad_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-mad()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_mad_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-max()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_max_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-max()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_max_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-max()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_max_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-min()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_min_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-min()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_min_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-min()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_min_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-energy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_energy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-energy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_energy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-energy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_energy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-iqr()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_iqr_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-iqr()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_iqr_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-iqr()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_iqr_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-entropy()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_entropy_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-entropy()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_entropy_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-entropy()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_entropy_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-maxInds-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_maxInds_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-maxInds-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_maxInds_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-maxInds-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_maxInds_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-meanFreq()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_meanFreq_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-meanFreq()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_meanFreq_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-meanFreq()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_meanFreq_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-skewness()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_skewness_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-kurtosis()-X</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_kurtosis_X</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-skewness()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_skewness_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-kurtosis()-Y</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_kurtosis_Y</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-skewness()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_skewness_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-kurtosis()-Z</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_kurtosis_Z</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,8</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,8</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-9,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_9,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,40</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,40</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-41,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_41,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,56</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,56</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-57,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_57,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,16</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,16</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-17,32</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_17,32</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-33,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_33,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-49,64</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_49,64</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-1,24</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_1,24</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyGyro-bandsEnergy()-25,48</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyGyroscope_bandsEnergy_25,48</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-maxInds</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_maxInds</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-meanFreq()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_meanFreq</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-skewness()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_skewness</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyAccMag-kurtosis()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyAccelerometerMagnitude_kurtosis</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-maxInds</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_maxInds</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-meanFreq()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_meanFreq</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-skewness()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_skewness</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyAccJerkMag-kurtosis()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyAccelerometerJerkMagnitude_kurtosis</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-maxInds</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_maxInds</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-meanFreq()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_meanFreq</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-skewness()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_skewness</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroMag-kurtosis()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeMagnitude_kurtosis</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-mean()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_mean</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-std()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_std</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-mad()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_mad</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-max()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_max</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-min()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_min</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-sma()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_sma</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-energy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_energy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-iqr()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_iqr</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-entropy()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_entropy</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-maxInds</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_maxInds</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-meanFreq()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_meanFreq</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-skewness()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_skewness</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>fBodyBodyGyroJerkMag-kurtosis()</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>FrequencyBodyBodyGyroscopeJerkMagnitude_kurtosis</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(tBodyAccMean,gravity)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(TimeBodyAccelerometerMean,gravity)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(tBodyAccJerkMean),gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(TimeBodyAccelerometerJerkMean),gravityMean)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(tBodyGyroMean,gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(TimeBodyGyroscopeMean,gravityMean)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(tBodyGyroJerkMean,gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(TimeBodyGyroscopeJerkMean,gravityMean)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(X,gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(X,gravityMean)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(Y,gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(Y,gravityMean)</TD>
		</TR>
		<TR>
			<TD HEIGHT=18 ALIGN=LEFT>x_test.txt and x_train.txt</TD>
			<TD ALIGN=LEFT>angle(Z,gravityMean)</TD>
			<TD ALIGN=LEFT>combined_data</TD>
			<TD ALIGN=LEFT>angle(Z,gravityMean)</TD>
		</TR>
	</TBODY>
</TABLE>
<!-- ************************************************************************** -->

In the final data file, the column headers use the same name as in the intermediate data.fram "combined_data", with the string "AverageOf" appended at the beginning, to indicate that each data element is the derived average of all measurements of that type for a particular study subject(person) and activity, as follows:
                                              
AverageOfTimeBodyAccelerometer_std_X                         
AverageOfTimeBodyAccelerometer_std_Y                         
AverageOfTimeBodyAccelerometer_std_Z                         
AverageOfTimeGravityAccelerometer_std_X                      
AverageOfTimeGravityAccelerometer_std_Y                      
AverageOfTimeGravityAccelerometer_std_Z                      
AverageOfTimeBodyAccelerometerJerk_std_X                     
AverageOfTimeBodyAccelerometerJerk_std_Y                     
AverageOfTimeBodyAccelerometerJerk_std_Z                     
AverageOfTimeBodyGyroscope_std_X                             
AverageOfTimeBodyGyroscope_std_Y                             
AverageOfTimeBodyGyroscope_std_Z                             
AverageOfTimeBodyGyroscopeJerk_std_X                         
AverageOfTimeBodyGyroscopeJerk_std_Y                         
AverageOfTimeBodyGyroscopeJerk_std_Z                         
AverageOfTimeBodyAccelerometerMagnitude_std                  
AverageOfTimeGravityAccelerometerMagnitude_std               
AverageOfTimeBodyAccelerometerJerkMagnitude_std              
AverageOfTimeBodyGyroscopeMagnitude_std                      
AverageOfTimeBodyGyroscopeJerkMagnitude_std                  
AverageOfFrequencyBodyAccelerometer_std_X                    
AverageOfFrequencyBodyAccelerometer_std_Y                    
AverageOfFrequencyBodyAccelerometer_std_Z                    
AverageOfFrequencyBodyAccelerometerJerk_std_X                
AverageOfFrequencyBodyAccelerometerJerk_std_Y                
AverageOfFrequencyBodyAccelerometerJerk_std_Z                
AverageOfFrequencyBodyGyroscope_std_X                        
AverageOfFrequencyBodyGyroscope_std_Y                        
AverageOfFrequencyBodyGyroscope_std_Z                        
AverageOfFrequencyBodyAccelerometerMagnitude_std             
AverageOfFrequencyBodyBodyAccelerometerJerkMagnitude_std     
AverageOfFrequencyBodyBodyGyroscopeMagnitude_std             
AverageOfFrequencyBodyBodyGyroscopeJerkMagnitude_std         
AverageOfTimeBodyAccelerometer_mean_X                        
AverageOfTimeBodyAccelerometer_mean_Y                        
AverageOfTimeBodyAccelerometer_mean_Z                        
AverageOfTimeGravityAccelerometer_mean_X                     
AverageOfTimeGravityAccelerometer_mean_Y                     
AverageOfTimeGravityAccelerometer_mean_Z                     
AverageOfTimeBodyAccelerometerJerk_mean_X                    
AverageOfTimeBodyAccelerometerJerk_mean_Y                    
AverageOfTimeBodyAccelerometerJerk_mean_Z                    
AverageOfTimeBodyGyroscope_mean_X                            
AverageOfTimeBodyGyroscope_mean_Y                            
AverageOfTimeBodyGyroscope_mean_Z                            
AverageOfTimeBodyGyroscopeJerk_mean_X                        
AverageOfTimeBodyGyroscopeJerk_mean_Y                        
AverageOfTimeBodyGyroscopeJerk_mean_Z                        
AverageOfTimeBodyAccelerometerMagnitude_mean                 
AverageOfTimeGravityAccelerometerMagnitude_mean              
AverageOfTimeBodyAccelerometerJerkMagnitude_mean             
AverageOfTimeBodyGyroscopeMagnitude_mean                     
AverageOfTimeBodyGyroscopeJerkMagnitude_mean                 
AverageOfFrequencyBodyAccelerometer_mean_X                   
AverageOfFrequencyBodyAccelerometer_mean_Y                   
AverageOfFrequencyBodyAccelerometer_mean_Z                   
AverageOfFrequencyBodyAccelerometer_meanFreq_X               
AverageOfFrequencyBodyAccelerometer_meanFreq_Y               
AverageOfFrequencyBodyAccelerometer_meanFreq_Z               
AverageOfFrequencyBodyAccelerometerJerk_mean_X               
AverageOfFrequencyBodyAccelerometerJerk_mean_Y               
AverageOfFrequencyBodyAccelerometerJerk_mean_Z               
AverageOfFrequencyBodyAccelerometerJerk_meanFreq_X           
AverageOfFrequencyBodyAccelerometerJerk_meanFreq_Y           
AverageOfFrequencyBodyAccelerometerJerk_meanFreq_Z           
AverageOfFrequencyBodyGyroscope_mean_X                       
AverageOfFrequencyBodyGyroscope_mean_Y                       
AverageOfFrequencyBodyGyroscope_mean_Z                       
AverageOfFrequencyBodyGyroscope_meanFreq_X                   
AverageOfFrequencyBodyGyroscope_meanFreq_Y                   
AverageOfFrequencyBodyGyroscope_meanFreq_Z                   
AverageOfFrequencyBodyAccelerometerMagnitude_mean            
AverageOfFrequencyBodyAccelerometerMagnitude_meanFreq        
AverageOfFrequencyBodyBodyAccelerometerJerkMagnitude_mean    
AverageOfFrequencyBodyBodyAccelerometerJerkMagnitude_meanFreq
AverageOfFrequencyBodyBodyGyroscopeMagnitude_mean            
AverageOfFrequencyBodyBodyGyroscopeMagnitude_meanFreq        
AverageOfFrequencyBodyBodyGyroscopeJerkMagnitude_mean        
AverageOfFrequencyBodyBodyGyroscopeJerkMagnitude_meanFreq 