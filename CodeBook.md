# CodeBook



## Data Source

The dataset is derived from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data for the project is [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The ** README.txt** and **features.txt** files in the original dataset explains different characteristics of this dataset.

### Code

The script run_analysis.Rperforms the 5 steps described in the course project's definition.
 1. The data files are loaded using the read.csv function, and then, are merged using the rbind() function. 
 2. Those columns with the mean and standard deviation measures are extracted from the whole dataset.
 3. Loading the activity data from from activity_labels.txt and they are substituted in the dataset.
 4.  In previous step, the columns with non-tidy names (extracted from features.txt) are modified (BodyBody --> Body, etc.)
 5. A new dataset is genereted with all the average measures for each subject and activity type using the [dpply][e1] function



[e1] http://www.cookbook-r.com/Manipulating_data/Summarizing_data/