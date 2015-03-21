# CodeBook

This is a CodeBook for the *Getting and Cleaning Data project*, that describes the variables, the data, and transformations performed to clean up the original data.

## Data source

The original data describes the *Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors*. It can downloaded at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 


The dataset includes a *Readme.txt* file with the full description of the experiments, variables and all contact information of the original authors. It also includes three files with the measurement
headers and their description:

+ *features.txt*: List of all features.

+ *activity_labels.txt*: Links the class labels with their activity name.

+ *features_info.txt*: Shows information about the variables used on the feature vector.


Additionally, the dataset contains two foldes (namely *test* and *train*), with the full set of measurements. Their descriptions are: 

+ *subject_train.txt*: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

+ *Inertial Signals/total_acc_x_train.txt*: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

+ *Inertial Signals/body_acc_x_train.txt*: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

+ *train/Inertial Signals/body_gyro_x_train.txt*: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

For the purpose of this work only the *features* file has been used.

## Transformations

As the project requires, the R scripts performs the following transformations:

1. It merges the training and the test sets to create one single data set.
2. It extracts only the measurements on the mean and standard deviation for each measurement, including the angle information. 
3. It improves the angle labels for the mean and standard deviation to match the other names' format.
4. It creates a tidy dataset with the mean value for each subject of the study and its activity.


