# Getting and Cleaning Data - Course Project

This repository contains the deliverable files for the Course Project for the Data Science's track course "Getting and Cleaning data", available in Coursera.

The goal of this Project is to prepare tidy data that can be used for later analysis. 

# Data Source

The dataset used is from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and available in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset includes the following files:

- 'README.txt': source of this description
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
-  'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

# Files

Readme.md is this file

run_analysis.R contains all the code to perform the analyses in the five steps included in the Course Project requirements. This code need that the files explained below, without names altered,are present in the folder "data".

CodeBook.md describes the variables, the data, and any transformations or work that was performed to clean up the data.

results_tidy.txt tab-delimited file which contains the means of all the columns per test subject and per activity. 


