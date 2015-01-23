# CodeBook



## Data Source

The dataset is derived from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data for the project is [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The **README.txt** and **features.txt** files in the original dataset explains different characteristics of it.

## Code & Variables

The 5 steps described in the course project's definition are carried out the **run_analysis.R** file:

 1. The data files are loaded using the *read.csv* function, and then, are merged using the *rbind()* function. 
    1.1 The data extracted from the train files  is stored in *train_x*, *train_y*, *train_sbj* variables.
    1.2 The data extracted from the test files  is stored in *test_x*, *test_y*, *test_sbj* variables.
    1.3 The extracted data is merged in the *x*, *y* and *sbj* variables 
 2. Those columns with the mean and standard deviation measures are extracted from the whole dataset.
	2.1 *features* contains the correct names for the *x* dataset,
	2.2 *meanstd_cols* are the number of each column of the desired data.

 3. Loading the activity data from from **activity_labels.txt** in the *activities* variable. Then, the corresponding values are substituted in the dataset.
 4. In previous steps, the columns with non-tidy names (extracted from **features.txt**) are modified (BodyBody --> Body, etc.)
 5. A new dataset (*tidy*) is generated with all the average measures for each subject and activity type using the [dpply](http://www.cookbook-r.com/Manipulating_data/Summarizing_data/#using-ddply) function
    Then, The result is written out to "results_tidy.txt" file in current working directory. 
	