library(data.table)

run.analysis <- function () {
  setwd('UCI HAR Dataset/')
  feature.all <- read.table('features.txt', col.names = c('index', 'name'))
  features <- subset(feature.all, grepl('-(mean|std)[(]', feature.all$name))
  
  label.all <- read.table('activity_labels.txt', col.names = c('level', 'label'))
  
  # load.dataset() is defined as a function below from line 34
  train.set <- load.dataset('train', features, label.all)
  test.set <- load.dataset('test', features, label.all)
  
  # Raw data set
  dataset <- rbind(train.set, test.set)
  
  # Tidy data set
  tidy.dataset <- dataset[, lapply(.SD, mean), by=list(label, subject)]
  # Fix the variable names
  names <- names(tidy.dataset)
  names <- gsub('[()-]', '', names) # Remove the parenthesis and dashes
  names <- gsub('BodyBody', 'Body', names) # Remove duplicated names
  setnames(tidy.dataset, names)
  
  # Save the raw and the tidy data sets to CSV files in the Root directory
  setwd('..')
  write.csv(dataset, file = 'rawdata.csv', row.names = FALSE)
  write.csv(tidy.dataset, file = 'tidydata.csv',
            row.names = FALSE, quote = FALSE)
}

# Define 'load.dataset()' funtion 
# Working directory should be where the given data sets exist.
load.dataset <- function (set, features, labels) {
  # Construct the relative pathes of data files
  prefix <- paste(set, '/', sep = '')
  file.data <- paste(prefix, 'X_', set, '.txt', sep = '')
  file.label <- paste(prefix, 'y_', set, '.txt', sep = '')
  file.subject <- paste(prefix, 'subject_', set, '.txt', sep = '')
  
  data <- read.table(file.data)[, features$index]
  names(data) <- features$name
  
  label.set <- read.table(file.label)[, 1]
  data$label <- factor(label.set, levels=labels$level, labels=labels$label)
  
  subject.set <- read.table(file.subject)[, 1]
  data$subject <- factor(subject.set)
  
  data.table(data)
}
