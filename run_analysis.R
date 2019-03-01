## Downloading and unzipping dataset

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
downloadTime <- Sys.time()
download.file(fileUrl, destfile = "./data.zip", method = "curl")
dir.create("data")
unzip("./data.zip",exdir="./data")

## Loading common data
activitiesNames <- as.character(read.table("./data/UCI HAR Dataset/activity_labels.txt",)[,2])
features <- as.character(read.table("./data/UCI HAR Dataset/features.txt",)[,2])

## Loading test dataset
meanAndStdColumns <- c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 
163, 164, 165, 166, 201, 202, 214, 215, 227, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 294, 295, 
296, 345, 346, 347, 348, 349, 350, 373, 374, 375, 424, 425, 426, 427, 428, 429, 452, 453, 454, 503, 504, 
513, 516, 517, 526, 529, 530, 539, 542, 543, 552)

testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testMeasurements <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names=features)
testActivities <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

selectedTestMeasurements <- testMeasurements[meanAndStdColumns]

testActivitiesNames <- activitiesNames[testActivities$V1]

testData <- cbind(testSubjects, testActivitiesNames, selectedTestMeasurements)
colnames(testData)[1] <- "subject"
colnames(testData)[2] <- "activity"

## Loading train dataset
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainMeasurements <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names=features)
trainActivities <- read.table("./data/UCI HAR Dataset/train/y_train.txt")

selectedTrainMeasurements <- trainMeasurements[meanAndStdColumns]

trainActivitiesNames <- activitiesNames[trainActivities$V1]

trainData <- cbind(trainSubjects, trainActivitiesNames, selectedTrainMeasurements)
colnames(trainData)[1] <- "subject"
colnames(trainData)[2] <- "activity"

## Merging datasets
data <- rbind(testData, trainData)

## Aggregated data (point 5)
aggregatedData <- aggregate(data,by=list(data$subject,data$activity),FUN=mean)
aggregatedData$activity <- NULL
aggregatedData[1] <- NULL
colnames(aggregatedData)[1] <- "activity"

## saving data
write.table(data, file = "data.txt", row.name=FALSE)
write.table(aggregatedData, file="aggregatedData.txt", row.name=FALSE)
