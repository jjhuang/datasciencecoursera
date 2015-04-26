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
* *timeBodyAccelerometerAverageAlongXAxis*
* *timeBodyAccelerometerAverageAlongYAxis*
* *timeBodyAccelerometerAverageAlongZAxis*
* *timeBodyAccelerometerStandardDeviationAlongXAxis*
* *timeBodyAccelerometerStandardDeviationAlongYAxis*
* *timeBodyAccelerometerStandardDeviationAlongZAxis*
* *timeGravityAccelerometerAverageAlongXAxis*
* *timeGravityAccelerometerAverageAlongYAxis*
* *timeGravityAccelerometerAverageAlongZAxis*
* *timeGravityAccelerometerStandardDeviationAlongXAxis*
* *timeGravityAccelerometerStandardDeviationAlongYAxis*
* *timeGravityAccelerometerStandardDeviationAlongZAxis*
* *timeBodyAccelerometerJerkAverageAlongXAxis*
* *timeBodyAccelerometerJerkAverageAlongYAxis*
* *timeBodyAccelerometerJerkAverageAlongZAxis*
* *timeBodyAccelerometerJerkStandardDeviationAlongXAxis*
* *timeBodyAccelerometerJerkStandardDeviationAlongYAxis*
* *timeBodyAccelerometerJerkStandardDeviationAlongZAxis*
* *timeBodyGyrometerAverageAlongXAxis*
* *timeBodyGyrometerAverageAlongYAxis*
* *timeBodyGyrometerAverageAlongZAxis*
* *timeBodyGyrometerStandardDeviationAlongXAxis*
* *timeBodyGyrometerStandardDeviationAlongYAxis*
* *timeBodyGyrometerStandardDeviationAlongZAxis*
* *timeBodyGyrometerJerkAverageAlongXAxis*
* *timeBodyGyrometerJerkAverageAlongYAxis*
* *timeBodyGyrometerJerkAverageAlongZAxis*
* *timeBodyGyrometerJerkStandardDeviationAlongXAxis*
* *timeBodyGyrometerJerkStandardDeviationAlongYAxis*
* *timeBodyGyrometerJerkStandardDeviationAlongZAxis*
* *timeBodyAccelerometerMagnitudeAverage*
* *timeBodyAccelerometerMagnitudeStandardDeviation*
* *timeGravityAccelerometerMagnitudeAverage*
* *timeGravityAccelerometerMagnitudeStandardDeviation*
* *timeBodyAccelerometerJerkMagnitudeAverage*
* *timeBodyAccelerometerJerkMagnitudeStandardDeviation*
* *timeBodyGyrometerMagnitudeAverage*
* *timeBodyGyrometerMagnitudeStandardDeviation*
* *timeBodyGyrometerJerkMagnitudeAverage*
* *timeBodyGyrometerJerkMagnitudeStandardDeviation*
* *frequencyBodyAccelerometerAverageAlongXAxis*
* *frequencyBodyAccelerometerAverageAlongYAxis*
* *frequencyBodyAccelerometerAverageAlongZAxis*
* *frequencyBodyAccelerometerStandardDeviationAlongXAxis*
* *frequencyBodyAccelerometerStandardDeviationAlongYAxis*
* *frequencyBodyAccelerometerStandardDeviationAlongZAxis*
* *frequencyBodyAccelerometerJerkAverageAlongXAxis*
* *frequencyBodyAccelerometerJerkAverageAlongYAxis*
* *frequencyBodyAccelerometerJerkAverageAlongZAxis*
* *frequencyBodyAccelerometerJerkStandardDeviationAlongXAxis*
* *frequencyBodyAccelerometerJerkStandardDeviationAlongYAxis*
* *frequencyBodyAccelerometerJerkStandardDeviationAlongZAxis*
* *frequencyBodyGyrometerAverageAlongXAxis*
* *frequencyBodyGyrometerAverageAlongYAxis*
* *frequencyBodyGyrometerAverageAlongZAxis*
* *frequencyBodyGyrometerStandardDeviationAlongXAxis*
* *frequencyBodyGyrometerStandardDeviationAlongYAxis*
* *frequencyBodyGyrometerStandardDeviationAlongZAxis*
* *frequencyBodyAccelerometerMagnitudeAverage*
* *frequencyBodyAccelerometerMagnitudeStandardDeviation*
* *frequencyBodyBodyAccelerometerJerkMagnitudeAverage*
* *frequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation*
* *frequencyBodyBodyGyrometerMagnitudeAverage*
* *frequencyBodyBodyGyrometerMagnitudeStandardDeviation*
* *frequencyBodyBodyGyrometerJerkMagnitudeAverage*
* *frequencyBodyBodyGyrometerJerkMagnitudeStandardDeviation*
* *activity*
* *subject*
