# Getting and Cleaning Data Course Project

## Introduction
This is the repository containing the script for the 'Getting and Cleaning Data' course project on Coursera.

## Script Flow
1. The script begins by loading the training and test files into separate "X_train", "Y_train", "X_test" and "Y_test" files.
2. The "V1" variable is named on the Y files as "activity"
3. The subject_train and subject_test text files are loaded and its column name named as "subject."
4. Using "features.txt," the columns of the X files are rewritten as such.
5. The X_train and X_test files are joined together via *rbind* to create one long X file.
6. The Y_train and Y_test files are joined together via *rbind* to create one long Y file.
7. The subject train and test files are also joined together via *rbind*.
8. The requested mean and std variables are filtered using grep on the column names.
9. Finally, all the X, Y and subject variables are joined together via *cbind* (this was kept for last so that we do not filter out the subject and activity labels).
10. Converting the filtered dataset to a dataframe, we apply *aggregate* via a *group_by* on the string concatenation of subject and activity.
11. Using the *aggregate* function, we then apply a mean to get the summarized data by subject and activity.
12. Finally, using "activity_labels.txt", we replace all the labels in the activity column with the appropriate class names.
13. To produce our tidy dataset, a series of *gsub* commands were used to consistently replace all the common abbreviations with a long form name.

## Codebook
* *activity*
The activity being performed, being one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING
* *subject*
The ID number of the subject.

In general (with exceptions), the measurement variables follow a naming convention of [DOMAIN][SIGNAL][DEVICE][STATS][DIRECTION] where:
* Domain:
Either **time** or **frequency**. Dictates whether this variable is in the raw time series form, or if a Fourier Transform has been applied to render it in the frequency domain.
* Signal:
Either **Body** or **Gravity**. Dictates whether it was a body or gravity signal that was measured.
* Device:
Either **Gyrometer** or **Accelerometer**. Dictates whether the signal was measured using a gyrometer or an accelerometer.
* Stats:
Either **Average** or **Standard Deviation**. This tells you whether this number is an average statistic or a standard deviation.
* Direction *(optional)*:
If this exists, this indicates that this was a vector measurement taken along one of the three axis. If not, then this measurement is a **magnitude**.

Examples:
* **timeBodyAccelerometerAverageAlongXAxis**: This is an averaged time-domain measurement of body acceleration along the X-axis, using an accelerometer.
* **frequencyBodyBodyGyrometerJerkMagnitudeStandardDeviation**: This is a standard deviation of a frequency-domain measurement of the magnitude body jerk motion using a gyrometer.
