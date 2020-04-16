#Load required libraries
library(dplyr)
library(data.table)
library(purrr)

#Download and unzip dataset
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<-paste0(getwd(),"/uci_har_dataset.zip")
download.file(url,destfile)
unzip("uci_har_dataset.zip")

#Read textfiles
dataset_path <- paste0(getwd(),"/UCI HAR Dataset")
train_x_path <- "/train/X_train.txt"
train_y_path <- "/train/y_train.txt"
test_x_path <- "/test/X_test.txt"
test_y_path <- "/test/y_test.txt"
features_path <- "/features.txt"
train_subject_path <- "/train/subject_train.txt"
test_subject_path <- "/test/subject_test.txt"
activity_labels_path <- "/activity_labels.txt"

#Can be summarised in a do.call or something? Not apply as would return list?
train_x <- read.delim(file = paste0(dataset_path, train_x_path), sep="", header=FALSE)
train_y <- read.delim(file = paste0(dataset_path, train_y_path), sep="", header=FALSE)
test_x <- read.delim(file = paste0(dataset_path, test_x_path), sep="", header=FALSE)
test_y <- read.delim(file = paste0(dataset_path, test_y_path), sep="", header=FALSE)
features <- read.delim(file = paste0(dataset_path, features_path), sep="", header=FALSE)
subject_id_test <- read.delim(file = paste0(dataset_path, test_subject_path), sep="", header=FALSE)
subject_id_train <- read.delim(file = paste0(dataset_path, train_subject_path), sep="", header=FALSE)
activity_labels <- read.delim(file = paste0(dataset_path, activity_labels_path), sep="", header=FALSE)

# Add column names from features, remove paranthesis from variable names
features <- lapply(features, function(x) gsub("\\()", "", x))
colnames(train_x) <- features$V2
colnames(test_x) <- features$V2

# Merge datasets and labels, rename columns
train <- cbind(subject_id_train, train_y, train_x)
test <- cbind(subject_id_test, test_y, test_x)
colnames(train)[1] <- "subject_id"
colnames(train)[2] <- "activity"
colnames(test)[1] <- "subject_id"
colnames(test)[2] <- "activity"

#Merge train and test dataset
full_dataset <- rbind(train, test)

# Filter columns by whether they contain "mean" or "std", keep subject_id + activity label (col 1+2)
# (need to add +1 for the column position due to activity label added)
column_list <- c(1,2, sapply(c(grep("mean", features$V2), grep("std", features$V2)), function(x) x+2))
mean_std_data <- full_dataset[,column_list]

# Add activity labels to dataset
mean_std_data <- mean_std_data %>% left_join(activity_labels, by=c("activity" = "V1"))
mean_std_data <- mean_std_data[c(1,82,3:81)] %>% rename(activity = V2)

#Second, independent dataset with the average of each variable for each activity and subject
tidy_dataset <- mean_std_data %>% 
  group_by(subject_id, activity) %>% 
  summarise_all(mean)
tidy_dataset <- set_names(tidy_dataset[,c(3:81)],paste0(names(tidy_dataset[,c(3:81)]),"_mean"))
tidy_dataset %>% write.csv("tidy_dataset.csv")

