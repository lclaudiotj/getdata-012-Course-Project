## Getting and Cleaning Data project

### Intro

This repository contains the project code for the *Getting and Cleanning Data* Course. The objective of the project is to clean the Human Activity Recognition dataset and build a new tidy dataset to perform future analysis.

It contains three main files:

+ *Readme.md (this file)*: a file describing the steps to reproduce the analysis.

+ *CodeBook.md*: a file describing the variables, the data, and transformations performed to clean up the original data.

+ *run_analysis.R*: a R script with the actual code.


### Assigment

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


### Running the script

To start the analysis, just follow the next steps:

1. Download the data from the following link [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
2. Unzip the file downloaded.
3. Set the R working directory as the directory where you download this files using the `setwd(<current_directory>)` command.
3. Run `source("run_analysis.R")`. As a result, it will generate the *tidy.txt* tidy data file.

