---
title: "README.md"
author: "Pamela Hernandez"
date: "Sunday, September 27, 2015"
output: html_document
---

Note:  most of the information in this document can also be found embedded as comments in the file run_analysis.R, for convenience.

This script cleans and transforms the dataset found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This dataset contains data collected from sensor readings of movements made by test subject using smartphones.  Information about the base data can be found in the readme.txt file distributed with the dataset, at the link provided above.

The purpose of this script is to perform the following steps on the base data set:

  1.   Merge the training and the test sets to create one data set.
  2.   Extract only the measurements on the mean and standard deviation for each measurement. 
  3.  Apply descriptive activity names to name the activities in the data set
  4.  Appropriately label the data set with descriptive variable names. 
  5.  From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.


The processing that creates the final data set is as follows:

Item 1. Merge the training and the test sets to create one data set.

Read all required data tables into memory:

```{r}
feature_names<-read.table("./UCI HAR Dataset/features.txt") #these will be column names
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
```
  
Combine the training datasets x_train with y_train and subject_train to get features matched with activities and test subjects.  These are bound in the order that the columns will be later named:

```{r}
all_training<-cbind(y_train, subject_train, x_train)
```

Combine the test datasets x_test with y_test and subject_test to get features matched with activities and test subjects.  These are bound in the order they will be later named.

```{r}
all_test<-cbind(y_test, subject_test, x_test)
```

Combine the training and test data to make 1 complete dataset

```{r}
combined_data<-rbind(all_training, all_test)
```

Note:  processing for item 2 is done after items 3 and 4 for ease of processing.  This allows a faster method for creating column labels.

Item 3. Use descriptive activity names to name the activities in the data set

Update activity names column with actual values from this list, by replacing the activity number with the name in the column values:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

```{r}
for(i in seq_len(nrow(combined_data))) {
  if (combined_data[i, 1]==1){
      combined_data[i, 1]<-"Walking"
  }else if (combined_data[i, 1]==2){
    combined_data[i, 1]<-"Walking_Upstairs"
  }else if (combined_data[i, 1]==3){
    combined_data[i, 1]<-"Walking_Downstairs"
  }else if (combined_data[i, 1]==4){
    combined_data[i, 1]<-"Sitting"
  }else if (combined_data[i, 1]==5){
    combined_data[i, 1]<-"Standing"
  }else if (combined_data[i, 1]==6){
    combined_data[i, 1]<-"Laying" 
  }else {
    combined_data[i, 1]<-"NA" 
  }
}
```

4. Appropriately label the data set with descriptive variable names. 

Change column names by substituting whole words for abbreviations.  The meaning of the abbreviations are described in the readme.txt file for the original dataset.

Concatentate/make vector of 561 element names from feature_names, 
```{r}
feature_names_vector<-as.vector(feature_names[ , 2])
```
Substitute full words for abbreviations in activity column names
```{r}
feature_names_vector<-gsub("tBody", "TimeBody", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("tGravity", "TimeGravity", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("fBody", "FrequencyBody", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Acc", "Accelerometer", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Gyro", "Gyroscope", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Mag", "Magnitude", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\()", "", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\-", "_", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\s", "_", feature_names_vector, ignore.case = TRUE)
```

Concatenate that with other names and assign with colnames())
```{r}
column_names<-c("activity", "subject_number", feature_names_vector)
colnames(combined_data)<-column_names
```

2. Extract only the measurements on the mean and standard deviation for each measurement. 
Extract all values in the original dataset that calculated mean or standard deviation.  This is determined by the column names, which included the functions used to derive the columns.
```{r}
stdsmeans<-c(colnames(combined_data)[grep("std",colnames(combined_data))], colnames(combined_data)[grep("mean",colnames(combined_data), fixed=TRUE)])
extracted_measures<-combined_data[ , c("activity", "subject_number", stdsmeans)]
```

5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Group by subject, activity, and apply mean() to each variable.  This will result in having columns for subject, activity, and mean (average) of each measure.  Note that "mean" here is interpreted to be "arithmetic mean", rather than median.

A temporary data.table is built from the previously extracted data as a basis for further summarization.

build a tidy_data table to hold all calculations and export

```{r}
require("data.table")
tempTable<-data.table(extracted_measures)
```

A tidy_data table is created to hold all final calculations and to export

```{r}
setkeyv(tempTable, cols=c("subject_number", "activity"))
tidy_data<-tempTable[, j=list(
mean(TimeBodyAccelerometer_std_X),                        
mean(TimeBodyAccelerometer_std_Y),                         
mean(TimeBodyAccelerometer_std_Z),                       
mean(TimeGravityAccelerometer_std_X),                      
mean(TimeGravityAccelerometer_std_Y),                      
mean(TimeGravityAccelerometer_std_Z),                      
mean(TimeBodyAccelerometerJerk_std_X),                     
mean(TimeBodyAccelerometerJerk_std_Y),                     
mean(TimeBodyAccelerometerJerk_std_Z),                     
mean(TimeBodyGyroscope_std_X),                             
mean(TimeBodyGyroscope_std_Y),                             
mean(TimeBodyGyroscope_std_Z),                             
mean(TimeBodyGyroscopeJerk_std_X),                         
mean(TimeBodyGyroscopeJerk_std_Y),                         
mean(TimeBodyGyroscopeJerk_std_Z),                         
mean(TimeBodyAccelerometerMagnitude_std),                  
mean(TimeGravityAccelerometerMagnitude_std),               
mean(TimeBodyAccelerometerJerkMagnitude_std),              
mean(TimeBodyGyroscopeMagnitude_std),                      
mean(TimeBodyGyroscopeJerkMagnitude_std),                  
mean(FrequencyBodyAccelerometer_std_X),                    
mean(FrequencyBodyAccelerometer_std_Y),                    
mean(FrequencyBodyAccelerometer_std_Z),                    
mean(FrequencyBodyAccelerometerJerk_std_X),                
mean(FrequencyBodyAccelerometerJerk_std_Y),                
mean(FrequencyBodyAccelerometerJerk_std_Z),                
mean(FrequencyBodyGyroscope_std_X),                        
mean(FrequencyBodyGyroscope_std_Y),                        
mean(FrequencyBodyGyroscope_std_Z),                        
mean(FrequencyBodyAccelerometerMagnitude_std),             
mean(FrequencyBodyBodyAccelerometerJerkMagnitude_std),     
mean(FrequencyBodyBodyGyroscopeMagnitude_std),             
mean(FrequencyBodyBodyGyroscopeJerkMagnitude_std),         
mean(TimeBodyAccelerometer_mean_X),                        
mean(TimeBodyAccelerometer_mean_Y),                        
mean(TimeBodyAccelerometer_mean_Z),                        
mean(TimeGravityAccelerometer_mean_X),                     
mean(TimeGravityAccelerometer_mean_Y),                     
mean(TimeGravityAccelerometer_mean_Z),                     
mean(TimeBodyAccelerometerJerk_mean_X),                    
mean(TimeBodyAccelerometerJerk_mean_Y),                    
mean(TimeBodyAccelerometerJerk_mean_Z),                    
mean(TimeBodyGyroscope_mean_X),                            
mean(TimeBodyGyroscope_mean_Y),                            
mean(TimeBodyGyroscope_mean_Z),                            
mean(TimeBodyGyroscopeJerk_mean_X),                        
mean(TimeBodyGyroscopeJerk_mean_Y),                        
mean(TimeBodyGyroscopeJerk_mean_Z),                        
mean(TimeBodyAccelerometerMagnitude_mean),                 
mean(TimeGravityAccelerometerMagnitude_mean),              
mean(TimeBodyAccelerometerJerkMagnitude_mean),             
mean(TimeBodyGyroscopeMagnitude_mean),                     
mean(TimeBodyGyroscopeJerkMagnitude_mean),                 
mean(FrequencyBodyAccelerometer_mean_X),                   
mean(FrequencyBodyAccelerometer_mean_Y),                   
mean(FrequencyBodyAccelerometer_mean_Z),                   
mean(FrequencyBodyAccelerometer_meanFreq_X),               
mean(FrequencyBodyAccelerometer_meanFreq_Y),               
mean(FrequencyBodyAccelerometer_meanFreq_Z),               
mean(FrequencyBodyAccelerometerJerk_mean_X),               
mean(FrequencyBodyAccelerometerJerk_mean_Y),               
mean(FrequencyBodyAccelerometerJerk_mean_Z),               
mean(FrequencyBodyAccelerometerJerk_meanFreq_X),           
mean(FrequencyBodyAccelerometerJerk_meanFreq_Y),           
mean(FrequencyBodyAccelerometerJerk_meanFreq_Z),           
mean(FrequencyBodyGyroscope_mean_X),                       
mean(FrequencyBodyGyroscope_mean_Y),                       
mean(FrequencyBodyGyroscope_mean_Z),                       
mean(FrequencyBodyGyroscope_meanFreq_X),                   
mean(FrequencyBodyGyroscope_meanFreq_Y),                   
mean(FrequencyBodyGyroscope_meanFreq_Z),                   
mean(FrequencyBodyAccelerometerMagnitude_mean),            
mean(FrequencyBodyAccelerometerMagnitude_meanFreq),        
mean(FrequencyBodyBodyAccelerometerJerkMagnitude_mean),    
mean(FrequencyBodyBodyAccelerometerJerkMagnitude_meanFreq),
mean(FrequencyBodyBodyGyroscopeMagnitude_mean),            
mean(FrequencyBodyBodyGyroscopeMagnitude_meanFreq),        
mean(FrequencyBodyBodyGyroscopeJerkMagnitude_mean),        
mean(FrequencyBodyBodyGyroscopeJerkMagnitude_meanFreq) 

), by=list(activity, subject_number)]

export_column_names<-colnames(extracted_measures)
export_column_names<-gsub("TimeBody", "AverageOfTimeBody", export_column_names, ignore.case = TRUE)
export_column_names<-gsub("TimeGravity", "AverageOfTimeGravity", export_column_names, ignore.case = TRUE)
export_column_names<-gsub("FrequencyBody", "AverageOfFrequencyBody", export_column_names, ignore.case = TRUE)

colnames(tidy_data)<-export_column_names
```

Final data is exported to tidy_data.csv.  This is a comma-delimited file with column names but no row names.

```{r}
write.table(tidy_data, file = "tidy_data.csv", append = FALSE, quote = TRUE, sep = ",", col.names = TRUE, row.names=FALSE)
```
