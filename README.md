CleanData
=========

Creating a tidy dataset for Coursera "Getting and Cleaning Data" Course Project

The run_analysis.R file in this repo has all the R commands required for this project.
The script is executing from a directory whose parent directory has a test and train subdirectory that hold the
relevant data such as X_test.txt, y_test.txt, X_train.txt.y_train.txt and so on.

The following sequence of steps is used to achieve the desired objective of producing a tidy dataset:

Item 1. Read the subject_train.txt and subject_test.txt and combine them using rbind() to produce a data frame of 10299 observations of 1 variable
Item 1a. Name this variable "subjectID"
Item 2. Read the y_train.txt and y_test.txt files and combine them using rbind() to produce a data frame of 10299 observations of 1 variable
Item 2a. Name this variable "activityType"
Item 3. Read the X_train.txt and X_test.txt files and combine them using rbind() to produce a data frame of 10299 observations of 561 variables
Item 4. Read the variable names in from features.txt file and combine that dataframe with the previous dataframe to get column names for the variables
Item 5. Combine the dataframes from steps 1,2,4 to produce a big dataframe with 10299 observations of 563 variables.
Item 6. Of all the variables, we are only interested in the mean() and std() measures of the signals. So look for column names that have mean() and std()
Item 6a. *Note : We are filtering out only mean() and std(), **NOT** meanfreq() and other such measures
Item 7. Create a smaller dataframe with only the columns identified above as having mean() and std() measures. This has 10299 observations of 68 variables
Item 8. Next the activity labels are read into a dataframe
Item 9. In the next steps, variable names are simplified by replacing patterns like "-mean()-X" to "MeanX", thereby changing variable names from "tBodyAcc-mean()-X" to tBodyAccMeanX and so on.
Item 10. With the help of  group_by() and summarise_each() functions from the **dplyr package**, the dataset is aggregated by subject and activityType and the resulting dataset has 180 observations of 68 variables
Item 11. The final step is to replace the activityType (which is an integer from 1-6 by its corresponding label like "WALKING", "SITTING" etc.
Item 12. The resulting dataframe is rearranged to have subjectID, activityName, followed by the 66 average values for each of the variable measured.