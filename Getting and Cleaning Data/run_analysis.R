library(dplyr)

# Load the datasets separately
X_train = read.table('./UCI HAR Dataset/train/X_train.txt')
Y_train = read.table('./UCI HAR Dataset/train/y_train.txt')
X_test = read.table('./UCI HAR Dataset/test/X_test.txt')
Y_test = read.table('./UCI HAR Dataset/test/y_test.txt')

names(Y_train) <- c("activity")
names(Y_test) <- c("activity")
# subject_train = read.table('./UCI HAR Dataset/train/subject_train.txt')
# subject_test = read.table('./UCI HAR Dataset/test/subject_test.txt')
names(subject_train) <- c("subject")
names(subject_test) <- c("subject")

# Give appropriate titles
features = read.table('./UCI HAR Dataset/features.txt')[,2]
names(X_train) <- features
names(X_test) <- features

# Combine train and test
X_dataset <- rbind(X_train, X_test)
Y_dataset <- rbind(Y_train, Y_test)
subjects <- rbind(subject_train, subject_test)

# Filtered X dataset
filtered_dataset <- X_dataset[grep('(mean|std)\\(\\)', names(X_dataset))]

# Combine X, Y, subjects
filtered_dataset <- cbind(filtered_dataset, Y_dataset, subjects)

# Produce tidy dataset
filtered_dataset <- data.frame(filtered_dataset)
grouped_dataset <- aggregate(filtered_dataset, by=list(filtered_dataset$subject, filtered_dataset$activity), mean)
grouped_dataset$Group.1 <- NULL
grouped_dataset$Group.2 <- NULL

# Assign activity labels
activity_labels = read.table('./UCI HAR Dataset/activity_labels.txt')[,2]
grouped_dataset$activity = activity_labels[grouped_dataset$activity]

# Rename labels
names(grouped_dataset) <- gsub('^t', 'time', names(grouped_dataset))
names(grouped_dataset) <- gsub('^f', 'frequency', names(grouped_dataset))
names(grouped_dataset) <- gsub('Acc', 'Accelerometer', names(grouped_dataset))
names(grouped_dataset) <- gsub('Gyro', 'Gyrometer', names(grouped_dataset))
names(grouped_dataset) <- gsub('Mag', 'Magnitude', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.\\.\\.X', 'AlongXAxis', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.\\.\\.Y', 'AlongYAxis', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.\\.\\.Z', 'AlongZAxis', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.mean', 'Average', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.std', 'StandardDeviation', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.\\.', '', names(grouped_dataset))
names(grouped_dataset) <- gsub('\\.\\.', '', names(grouped_dataset))

write.table(grouped_dataset, "./project_tidy_dataset.txt", row.name=F)