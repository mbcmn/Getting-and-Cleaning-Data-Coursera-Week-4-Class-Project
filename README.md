---
output: html_document
---

# Johns Hopkins Data Science Specialization
# Getting and Cleaning Data Coursera Week 4 Class Project


## Readme

This repository contains three files:<br>

* README.md       -  This document
* CodeBook.md     -  Codebook describing the dataset, variables and transformation
* run_analysis.R  -  The R code

Please refer to the codebook and the R file for further details on the dataset, its cleaning and processing.<br>


## Analysis

The script requires the following packages to be installed:<br>

* dplyr
* data.table
* purrr<br>

The script downloads and unzips the original dateset and reads all required textfiles using read.delim():<br>

* X_train.txt
* y_train.txt
* X_test.txt
* y_test.txt
* features.txt
* subject_train.txt
* subject_test.txt
* activity_labels.txt<br>

It then adds column names and cleans them and adds subject ids and activity labels. Following this, the train and test datasets are merged, filtering all columns containing "mean" or "std", activity labels are then added through left_join.<br>

Finally, a separate, tidy dataset containing the means for each activity and each subject is produced and saved as tidy_dataset.txt.
