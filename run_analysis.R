#You should create one R script called run_analysis.R that does the following. 

#1. Merges the training and the test sets to create one data set.
  #30 people id'd in subject_train, subject_test
  #561 data elements ("features") - names in features.txt
  #6 activities (running walking etc.) listed in activities_labels.txt, numbered, linked to something


feature_names<-read.table("./UCI HAR Dataset/features.txt") #these will be column names
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

  
#cbind x_train with y_train and subject_train to get features matched with activities and ppl
#bind in the order that you intend to name columns later
all_training<-cbind(y_train, subject_train, x_train)

#cbind x_test with y_test and subject_test to get features matched with activities and ppl
#bind in the order that you intend to name columns later
all_test<-cbind(y_test, subject_test, x_test)

#rbind 2 resultant test sets to get 1 set with test, train, activities & ppl
combined_data<-rbind(all_training, all_test)

#3. Uses descriptive activity names to name the activities in the data set
#update activity names column with actual values
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
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


#4. Appropriately labels the data set with descriptive variable names. 

#change column names

#concatentate/make vector of 561 element names from feature_names, 
feature_names_vector<-as.vector(feature_names[ , 2])

#substitute full words for abbreviations in activity column names
feature_names_vector<-gsub("tBody", "TimeBody", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("tGravity", "TimeGravity", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("fBody", "FrequencyBody", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Acc", "Accelerometer", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Gyro", "Gyroscope", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("Mag", "Magnitude", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\()", "", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\-", "_", feature_names_vector, ignore.case = TRUE)
feature_names_vector<-gsub("\\s", "_", feature_names_vector, ignore.case = TRUE)

# then concatenate that with other names and assign with colnames())

column_names<-c("activity", "subject_number", feature_names_vector)
colnames(combined_data)<-column_names

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
stdsmeans<-c(colnames(combined_data)[grep("std",colnames(combined_data))], colnames(combined_data)[grep("mean",colnames(combined_data), fixed=TRUE)])
extracted_measures<-combined_data[ , c("activity", "subject_number", stdsmeans)]

#5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

#group by subject, activity, apply mean() to each variable
#end up with columns for subject, activity, and mean of each measure 


#build a temp table to calculate and gather the averages
#build a tidy_data table to hold all calculations and export

require("data.table")
tempTable<-data.table(extracted_measures)

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

write.table(tidy_data, file = "tidy_data.csv", append = FALSE, quote = TRUE, sep = ",", col.names = TRUE, row.names=FALSE)
