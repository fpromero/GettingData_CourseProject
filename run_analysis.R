# 1. Merge the training and test sets to create one data set

# 1.1 Load data
train_x <- read.csv("train/X_train.txt", sep="", header=FALSE)
train_y <- read.csv("train/y_train.txt", sep="", header=FALSE)
train_sbj <- read.csv("train/subject_train.txt", sep="", header=FALSE)
test_x <- read.csv("test/X_test.txt", sep="", header=FALSE)
test_y <- read.csv("test/y_test.txt", sep="", header=FALSE)
test_sbj <- read.csv("test/subject_test.txt", sep="", header=FALSE)

# 1.2 Merge Data
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)
sbj <- rbind(train_sbj, test_sbj)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 2.1 Extract Features and improve variable names
features <- read.csv("features.txt", sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2]) 
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])
features[,2] = gsub('BodyBody', 'Body', features[,2])
meadnstd_cols <- grep(".*Mean.*|.*Std.*", features[,2])

# 2.2 Extract data (cols)
x <- x[, meadnstd_cols]
names(x) <- features[meadnstd_cols, 2]

# 3. Uses descriptive activity names to name the activities in the data set

activities <- read.csv("activity_labels.txt", , sep="", header=FALSE)
y[, 1] <- activities[y[, 1], 2]
names(y) <- "activity"
names(sbj) <- "subject"

# 4. Appropriately label the data set with descriptive variable names -> already done

#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
# 5.1 binding
data <- cbind(x, y, sbj)
# 5.2 apply a summary function
## ddply used for group data based on some specified variables, and apply a summary function to each group.
# plyr required -> library(plyr) 
tidy <- ddply(data, c("subject", "activity"), function(x) colMeans(x[, 1:66]))


# 5.3 save
write.table(tidy, 'results_tidy.txt',row.names=FALSE,sep=' ')




