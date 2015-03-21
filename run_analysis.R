library(plyr)

# Load labels for the dataset
features <- read.table("features.txt", header = FALSE);
activity_labels <- read.table("activity_labels.txt", header = FALSE);

# Load test data
subj_test <- read.table("test/subject_test.txt", header = FALSE)
x_test <- read.table("test/X_test.txt", header = FALSE)
y_test <- read.table("test/Y_test.txt", header = FALSE)

# Load trainning data
subj_train <- read.table("train/subject_train.txt", header = FALSE)
x_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/Y_train.txt", header = FALSE)

# Generate new column names for the test data
names(subj_test) <- "subjectID"
names(x_test) <- features[, 2]
names(y_test) <- "activity"

# Generate new column names for the trainning data
names(subj_train) <- "subjectID"
names(x_train) <- features[, 2]
names(y_train) <- "activity"

# Filter only desired features on test and trainning data. Selecting columns
# with mean and std, but not those with meanFreq.
filtered_features <- features[(grepl("mean", features[, 2], ignore.case = TRUE) | 
                                 grepl("std", features[, 2], ignore.case = TRUE)) &
                                !grepl("meanFreq()", features[, 2], ignore.case = TRUE),]

x_test <- x_test[, filtered_features$V1]
x_train <- x_train[, filtered_features$V1]

# Merging test data
test_data <- cbind(subj_test, y_test, x_test)
test_data$activity <- activity_labels[test_data$activity, 2]

# Merging trainning data
train_data <- cbind(subj_train, y_train, x_train)
train_data$activity <- activity_labels[train_data$activity, 2]

# Combining both data sources into a signle data.frame
data <- rbind(test_data, train_data)

# Create tidy dataset. For each subject and activity calculation, I calculate
# the mean of each variable.
tidy_data <- ddply(data, .(subjectID, activity), colwise(mean))

write.table(tidy_data, 'tidy.txt', row.names = FALSE, sep = '\t')