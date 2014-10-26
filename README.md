Coursera - Getting and Cleaning Data - getdata-008

run_analysis.R

The purpose of this file is to describe the run_analysis.R script I wrote to tidy data taken from the "Human Activity 
Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while 
carrying a waist-mounted smartphone with embedded inertial sensors." 
	- (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

Line[3-5]  	The first 3 commands load the libraries that are necessary for the script to perform successfully
Line[9-22] 	The subsequent 8 commands read the raw data set into R Studio  
Line[26-30]	The next 5 commands assemble the test data frame. The column names are passed to the data table "xtest"
		The activities and subject id are bound with the "xtest" data table using cbind
		The column names for the subject id and activity column are given their correct names
Line[33-37]	The next 5 commands assemble the train data frame. The column names are passed to the data table "xtrain"
		The activities and subject id are bound with the "xtrain" data table using cbind
		The column names for the subject id and activity column are given their correct names
Line[40]	The train and test data sets are bound using the rbind function
Line[41-42]	The classes for the activity and id column are changed to character and numeric, respectively
Line[45-59]	This is a for loop that replaces the numbers in the activity column with the proper activity labels
Line[62]	This line subsets the data to only include the mean and standard deviation variables
Line[63]	The subsetted data frame is converted into a table
Line[64]	The table is arranged primarily by the subject id and secondarily by the activity performed
Line[65]	The group_by() function is used to group the table by activity and subject id
Line[66]	Creates the final data table with the means for each variable for each activity and subject
Line[68]	Returns the final data table