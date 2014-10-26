
Study Design

The data was collected by attaching a smartphone to each subject while they performed 6 activities. Using the embedded
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 
50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration 
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz 
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and 
frequency domain. 

Codebook

Features - The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
	   These are the 561 variables that are recorded in the raw data set.
	   These features are then cut down 66 variables that only include the mean and standard deviation of the 
	   time and frequency domain variables.

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

		Only the mean() and std() variables were included in the final data set, which left 66 total variables.


Activity_labels - These are the labels that were used to indicate the activity perform. These values replaced the ytest 
		  and ytrain values that were bound to each data set.

x_train - This is the raw training data set

x_test - This is the raw test data set

y_train - These are the activity labels in numerical form that indicate the activity being performed in the training data.
	  These values would later be replaced by the activity_labels values.

y_test - These are the activity labels in numerical form that indicate the activity being performed in the test data.
	 These values would later be replaced by the activity_labels values.


Subject_train - These are the identfiers for each subject in the train data set.

Subject_test - These are the identifiers for each subject in the test data set.


The Final Data Set (Tidy Data)

id - is the unique identifier for the subject

activity - indicates the activity being performed by the subject

The remaining 66 variables are the mean() and std() variables that were subsetted from the original data. The values
in each column indicate the average of each of the variables for each subject and each activity performed.







Citation

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012