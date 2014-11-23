# Merge the Subject_train and subject_test set and stick a colname for this data
sub_train <- read.table("../train/subject_train.txt")
sub_test <- read.table("../test/subject_test.txt")
all_sub <- rbind(sub_train, sub_test)
names(all_sub) <- c("subjectID")

#Merge the y_train and y_test and stick a colname for this data
act_train <- read.table("../train/y_train.txt")
act_test <- read.table("../test/y_test.txt")
all_act <- rbind(act_train, act_test)
names(all_act) <- c("activityType")

#merge the X_train and the X_test set 
X_train <- read.table("../train/X_train.txt")
X_test <- read.table("../test/X_test.txt")
all_X <- rbind (X_train, X_test)

#get the features.txt file to get variable names
feature_var <- read.table("../features.txt")
colnames(all_X) <- feature_var[,2]

#stick all_X, all_sub, all_act the datasets together
big_df <- cbind(all_X, all_sub, all_act)

#only interested in the mean and the std measurements out of all the variables in bigdf
col_subset <- grep("mean\\(\\)|std\\(\\)", colnames(big_df))
small_df <- big_df[, c(col_subset,562:563)]

#read activity labels
act_label <- read.table("../activity_labels.txt")

#Make column names neater
colnames(small_df) <- gsub("-mean\\(\\)\\-X", "MeanX", colnames(small_df))
colnames(small_df) <- gsub("-mean\\(\\)\\-Y", "MeanY", colnames(small_df))
colnames(small_df) <- gsub("-mean\\(\\)\\-Z", "MeanZ", colnames(small_df))
colnames(small_df) <- gsub("-mean\\(\\)", "Mean", colnames(small_df))
colnames(small_df) <- gsub("-std\\(\\)\\-X", "StdX", colnames(small_df))
colnames(small_df) <- gsub("-std\\(\\)\\-Y", "StdY", colnames(small_df))
colnames(small_df) <- gsub("-std\\(\\)\\-Z", "StdZ", colnames(small_df))
colnames(small_df) <- gsub("-std\\(\\)", "Std", colnames(small_df))


#Make dataset tidy by grouping each variable by subject and activityType
Using the group_by() in dplyr package
by_subject_activity <- group_by(small_df, subjectID, activityType)

#Get average value for each of the 66variables for each group above
final_df <- summarise_each(by_subject_activity, funs(mean))

#Strangely, final_df is actually not a dataframe, so cast it to a dataframe
tidy_df <- data.frame(final_df)

#Get ActivityNames into the dataframe
tidy_df$activityName <- "Default"
tidy_df$activityName[tidy_df$activityType == 1] <- "WALKING"
tidy_df$activityName[tidy_df$activityType == 2] <- "WALKING_UPSTAIRS"
tidy_df$activityName[tidy_df$activityType == 3] <- "WALKING_DOWNSTAIRS"
tidy_df$activityName[tidy_df$activityType == 4] <- "SITTING"
tidy_df$activityName[tidy_df$activityType == 5] <- "STANDING"
tidy_df$activityName[tidy_df$activityType == 6] <- "LAYING"

#Get rid of the activityType(integer column) and move the activityName column to the 2nd position
tidier_df <- tidy_df[, c(1,69,3:68)]
