# Getting and Cleaning Data Project
This repo is made for a course project of `Getting and Cleaning Data` course in Coursera.

##Script

The script in the function 'run.analysis()' is for 
* read two data sets (train / test) and merge
* processes the merged data set (control variables, names of activities ,,,)
* make 'rawdata.csv'
* make the tidy data set as 'tidydata.csv'

Before you test as a peer reviewer please take the given data, unzip that 
and place that in the current working directory.

And then you can run 
```r
source('./run_analysis.R')
run.analysis()
```

##Data Sets
###Raw data set
The raw data set contains 68 variables:
 * `subject` - An identifier of the subject that exicuted the experiment.
 * `label` - An label of activity.

The variables are defined as followings
 * `tBodyAcc-XYZ`
 * `tGravityAcc-XYZ`
 * `tBodyAccJerk-XYZ`
 * `tBodyGyro-XYZ`
 * `tBodyGyroJerk-XYZ`
 * `tBodyAccMag`
 * `tGravityAccMag`
 * `tBodyAccJerkMag`
 * `tBodyGyroMag`
 * `tBodyGyroJerkMag`
 * `fBodyAcc-XYZ`
 * `fBodyAccJerk-XYZ`
 * `fBodyGyro-XYZ`
 * `fBodyAccMag`
 * `fBodyAccJerkMag`
 * `fBodyGyroMag`
 * `fBodyGyroJerkMag`

And all those variables are estimated in two statistic value
 * `mean()`: Mean value
 * `std()`: Standard deviation

### Tidy data set
Tidy data set has same variables but renamed from the raw data sets with two rules
 1. Characters `-()` are removed
 2. `BodyBody` is replaced with `Body`

### Variables corresponding each data set

 Raw data set | Tidy data set
 -------------|--------------
 `subject` | `subject`
 `label` | `label`
 `tBodyAcc-mean()-X` | `tBodyAccmeanX`
 `tBodyAcc-mean()-Y` | `tBodyAccmeanY`
 `tBodyAcc-mean()-Z` | `tBodyAccmeanZ`
 `tBodyAcc-std()-X` | `tBodyAccstdX`
 `tBodyAcc-std()-Y` | `tBodyAccstdY`
 `tBodyAcc-std()-Z` | `tBodyAccstdZ`
 `tGravityAcc-mean()-X` | `tGravityAccmeanX`
 `tGravityAcc-mean()-Y` | `tGravityAccmeanY`
 `tGravityAcc-mean()-Z` | `tGravityAccmeanZ`
 `tGravityAcc-std()-X` | `tGravityAccstdX`
 `tGravityAcc-std()-Y` | `tGravityAccstdY`
 `tGravityAcc-std()-Z` | `tGravityAccstdZ`
 `tBodyAccJerk-mean()-X` | `tBodyAccJerkmeanX`
 `tBodyAccJerk-mean()-Y` | `tBodyAccJerkmeanY`
 `tBodyAccJerk-mean()-Z` | `tBodyAccJerkmeanZ`
 `tBodyAccJerk-std()-X` | `tBodyAccJerkstdX`
 `tBodyAccJerk-std()-Y` | `tBodyAccJerkstdY`
 `tBodyAccJerk-std()-Z` | `tBodyAccJerkstdZ`
 `tBodyGyro-mean()-X` | `tBodyGyromeanX`
 `tBodyGyro-mean()-Y` | `tBodyGyromeanY`
 `tBodyGyro-mean()-Z` | `tBodyGyromeanZ`
 `tBodyGyro-std()-X` | `tBodyGyrostdX`
 `tBodyGyro-std()-Y` | `tBodyGyrostdY`
 `tBodyGyro-std()-Z` | `tBodyGyrostdZ`
 `tBodyGyroJerk-mean()-X` | `tBodyGyroJerkmeanX`
 `tBodyGyroJerk-mean()-Y` | `tBodyGyroJerkmeanY`
 `tBodyGyroJerk-mean()-Z` | `tBodyGyroJerkmeanZ`
 `tBodyGyroJerk-std()-X` | `tBodyGyroJerkstdX`
 `tBodyGyroJerk-std()-Y` | `tBodyGyroJerkstdY`
 `tBodyGyroJerk-std()-Z` | `tBodyGyroJerkstdZ`
 `tBodyAccMag-mean()` | `tBodyAccMagmean`
 `tBodyAccMag-std()` | `tBodyAccMagstd`
 `tGravityAccMag-mean()` | `tGravityAccMagmean`
 `tGravityAccMag-std()` | `tGravityAccMagstd`
 `tBodyAccJerkMag-mean()` | `tBodyAccJerkMagmean`
 `tBodyAccJerkMag-std()` | `tBodyAccJerkMagstd`
 `tBodyGyroMag-mean()` | `tBodyGyroMagmean`
 `tBodyGyroMag-std()` | `tBodyGyroMagstd`
 `tBodyGyroJerkMag-mean()` | `tBodyGyroJerkMagmean`
 `tBodyGyroJerkMag-std()` | `tBodyGyroJerkMagstd`
 `fBodyAcc-mean()-X` | `fBodyAccmeanX`
 `fBodyAcc-mean()-Y` | `fBodyAccmeanY`
 `fBodyAcc-mean()-Z` | `fBodyAccmeanZ`
 `fBodyAcc-std()-X` | `fBodyAccstdX`
 `fBodyAcc-std()-Y` | `fBodyAccstdY`
 `fBodyAcc-std()-Z` | `fBodyAccstdZ`
 `fBodyAccJerk-mean()-X` | `fBodyAccJerkmeanX`
 `fBodyAccJerk-mean()-Y` | `fBodyAccJerkmeanY`
 `fBodyAccJerk-mean()-Z` | `fBodyAccJerkmeanZ`
 `fBodyAccJerk-std()-X` | `fBodyAccJerkstdX`
 `fBodyAccJerk-std()-Y` | `fBodyAccJerkstdY`
 `fBodyAccJerk-std()-Z` | `fBodyAccJerkstdZ`
 `fBodyGyro-mean()-X` | `fBodyGyromeanX`
 `fBodyGyro-mean()-Y` | `fBodyGyromeanY`
 `fBodyGyro-mean()-Z` | `fBodyGyromeanZ`
 `fBodyGyro-std()-X` | `fBodyGyrostdX`
 `fBodyGyro-std()-Y` | `fBodyGyrostdY`
 `fBodyGyro-std()-Z` | `fBodyGyrostdZ`
 `fBodyAccMag-mean()` | `fBodyAccMagmean`
 `fBodyAccMag-std()` | `fBodyAccMagstd`
 `fBodyBodyAccJerkMag-mean()` | `fBodyAccJerkMagmean`
 `fBodyBodyAccJerkMag-std()` | `fBodyAccJerkMagstd`
 `fBodyBodyGyroMag-mean()` | `fBodyGyroMagmean`
 `fBodyBodyGyroMag-std()` | `fBodyGyroMagstd`
 `fBodyBodyGyroJerkMag-mean()` | `fBodyGyroJerkMagmean`
 `fBodyBodyGyroJerkMag-std()` | `fBodyGyroJerkMagstd`

