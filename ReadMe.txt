{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue233;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs24 \cf0 In summary,  30 people took part in a test to monitor certain motion aspects while performing 6 simple activities:\
\
1 WALKING\
2 WALKING_UPSTAIRS\
3 WALKING_DOWNSTAIRS\
4 SITTING\
5 STANDING\
6 LAYING\
\
The monitoring equipment was a Samsung smartphone. More details on the initial data recorded can be found in the \'93Data Format Detals.txt\'94 which is included in this repository. The pre-processing performed on the data is listed in the \'93feature_info.txt\'94 with the associated \'93features.txt\'94 file showing the location of the calculated data in the resultant UCI HAR dataset. The specific dataset, as used in this work, is also included in this repository - \'93UCI HAR Dataset.zip\'94. \
\
The \'93run.analysis.R\'94 script merges several UCI HAR related files and extracts the first 6 data fields from the UCI HAR collated Dataset. It then takes the average of the Mean and Standard deviation values for each of the 6 activities performed by each of the people taking part in the experiment. It sorts the data by subject and outputs the results into a summary table. This output is the \'93Tidy_Data.txt\'94 file. The \'93Tidy_Data.txt\'94 file has a date-stamp line at the top of the file to record when it was produced.\
\
The \'93Tidy_Data.txt\'94 file has the data structure:\
\
\'93Subject\'94				Original subject ID\
"Activity"				Text description of the activity\
\'93Avg_X\'94				tBodyAcc-mean()-X	in the original data definition	\
"Avg_Y\'94				tBodyAcc-mean()-Y		\'93\'94\
\'93Avg_Z\'94				tBodyAcc-mean()-Z		\'93\'94\
\'93StDev_X\'94				tBodyAcc-std()-X		\'93\'94\
\'93StDev_Y\'94				tBodyAcc-std()-Y		\'93\'94	\
\'93StDev_Z\'94				tBodyAcc-std()-Z		\'93\'94\
\
Following the data stamp line there is a header row with the column names and the data values are separated by spaces.\
\
\
\
A full description of the data, and the background to the data collection process, is available at the site where the data was obtained: \
\
\pard\pardeftab720
{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf0 \ul \ulc2 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}} \
\
Here is the source data for the project: \
\
\pard\pardeftab720
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf0 \ul \ulc2 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\ul \ulc2 \
\
\
\pard\pardeftab720
\cf0 \ulnone \
}