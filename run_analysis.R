
##    Merges the training and the test sets to create one data set.
##    Extracts only the measurements on the mean and standard deviation for each measurement. 
##    Uses descriptive activity names to name the activities in the data set
##    Appropriately labels the data set with descriptive variable names. 

##    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##    6 activities 

##  The data is is 16 col chunks - and its the first 6 pieces of data required.
  
##  First job - merge people file, activity file and results file  
  
	atest = read.fwf("X_test.txt",widths=c(16, 16, 16, 16, 16, 16))
  apeople = read.fwf("subject_test.txt",widths=c(4))
  
	atask = read.fwf("y_test.txt",widths=c(1))
  
  adesc <- atask
  
	## Activity   
	##  1 WALKING
	##  2 WALKING_UPSTAIRS
	##  3 WALKING_DOWNSTAIRS
	##  4 SITTING
	##  5 STANDING
	##  6 LAYING
	
	atask[atask == 1] <- "Walking"
	atask[atask == 2] <- "Walking_Upstairs"
	atask[atask == 3] <- "Walking_Downstairs"
	atask[atask == 4] <- "Sitting"
	atask[atask == 5] <- "Standing"
	atask[atask == 6] <- "Laying"
  
	collateda <- cbind(apeople, adesc, atask, atest)
  
	btrain = read.fwf("X_train.txt",widths=c(16, 16, 16, 16, 16, 16))
  
	bpeople = read.fwf("subject_train.txt",widths=c(4))
	btask = read.fwf("y_train.txt",widths=c(1))
  
  bdesc <- btask
  
	btask[btask == 1] <- "Walking"
	btask[btask == 2] <- "Walking_Upstairs"
	btask[btask == 3] <- "Walking_Downstairs"
	btask[btask == 4] <- "Sitting"
	btask[btask == 5] <- "Standing"
	btask[btask == 6] <- "Laying"
	
	collatedb <- cbind(bpeople, bdesc, btask, btrain)
  
  collated <- rbind(collateda, collatedb)
  
	colnames(collated) <- c("Participant_ID",
	                        "Activity_Code",
                          "Activity_Description",
                          "X_Direction_Acceleration_Mean", 
                          "Y_Direction_Acceleration_Mean", 
                          "Z_Direction_Acceleration_Mean",
                          "X_Direction_Acceleration_StDev", 
                          "Y_Direction_Acceleration_StDev",
                          "Z_Direction_Acceleration_StDev")
  
	## Need to do by participant, by activity, average. 
	## This is the same as an SQL command. Avg(value) by x, by y
  
	ResData <- sqldf("select 
                   Participant_ID Subject, 
                   Activity_Description Activity,
                   avg(X_Direction_Acceleration_Mean) Avg_X, 
                   avg(Y_Direction_Acceleration_Mean) Avg_Y,
                   avg(Z_Direction_Acceleration_Mean) Avg_Z,
                   avg(X_Direction_Acceleration_StDev) StDev_X,
                   avg(Y_Direction_Acceleration_StDev) StDev_Y,
                   avg(Z_Direction_Acceleration_StDev) StDev_Z
                   from collated 
                   group by Participant_ID, Activity_Code
                   order by Participant_ID, Activity_Code")
  
	write.table(Sys.time(), "Tidy_Data.txt", row.names=FALSE, col.names = FALSE, append=FALSE)
  write.table(ResData, "Tidy_Data.txt", row.names=FALSE, col.names = TRUE, append=TRUE)
	