In summary,  30 people took part in a test to monitor certain motion aspects while performing 6 simple activities:

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

The monitoring equipment was a Samsung smartphone. More details on the initial data recorded can be found in the “Data Format Detals.txt” which is included in this repository. The pre-processing performed on the data is listed in the “feature_info.txt” with the associated “features.txt” file showing the location of the calculated data in the resultant UCI HAR dataset. The specific dataset, as used in this work, is also included in this repository - “UCI HAR Dataset.zip”. 

The “run.analysis.R” script merges several UCI HAR related files and extracts the first 6 data fields from the UCI HAR collated Dataset. It then takes the average of the Mean and Standard deviation values for each of the 6 activities performed by each of the people taking part in the experiment. It sorts the data by subject and outputs the results into a summary table. This output is the “Tidy_Data.txt” file. The “Tidy_Data.txt” file has a date-stamp line at the top of the file to record when it was produced.

The “Tidy_Data.txt” file has the data structure:

* “Subject”		- Original subject ID
* "Activity"		- Text description of the activity
* “Avg_X”		- tBodyAcc-mean()-X	in the original data definition	
* "Avg_Y”		- tBodyAcc-mean()-Y	ditto	
* “Avg_Z”		- tBodyAcc-mean()-Z	ditto	
* “StDev_X”		- tBodyAcc-std()-X	ditto	   
* “StDev_Y”		- tBodyAcc-std()-Y	ditto		
* “StDev_Z”		- tBodyAcc-std()-Z	ditto	

Following the data stamp line there is a header row with the column names and the data values are separated by spaces.


A full description of the data, and the background to the data collection process, is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here is the source data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



