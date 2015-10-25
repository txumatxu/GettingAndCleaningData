## run_analysis

## This function merges both training a test set samples from Human Activity
## Recognition Using Smartphones Dataset.
##
## This function Requires: The main function doesn't take any argument, but the 
##                         script has several requirements that are listed below.
##                              
##                         - UCI HAR dataset folder should be in the working directory.
##                         - The script uses dplyr and should be installed.
##                         - The script should also be executed from working directory.
##
## This function Returns: The main function does not return any data structure
##                        at all, it simply creates a txt file called UCI_HAR_Tidy_Data.txt
##                        in the working directory which contains the output.
##
##
## Execution instructions: Load source and Execute the script from your R console as follows:
##
##                              > source("run_analysis.R")
##                              > run_analysis()
##
## Author: Jose Maria Echevarria Fernandez
## Date: 20151025
## Related: Coursera,Johns Hopkins University,Getting And Cleaning Data,Data Science

run_analysis <- function(){
        # Load dplyr
        library(dplyr)
        
        # Load feature List and determine indexes for mean and std measurements
        feature_list <- load_feature_list()
        usable_feature_list <- determine_usable_feature_Indexes(feature_list)
        Activities=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
        
        # Load training samples and information about, activities and Subjects.
        main_training_samples <- load_main_training_samples(feature_list)
        main_training_samples_filtered=main_training_samples[ ,usable_feature_list$id] # (Step 4)
        training_users <- load_training_users()
        training_action <- load_training_action()
        
        # Bind training data with user and Activity information
        training_binded_data<-cbind(training_users,training_action,main_training_samples_filtered)
        
        
        # Load test samples and about, activities and Subjects
        main_test_samples <- load_main_test_samples(feature_list)
        main_test_samples_filtered=main_test_samples[,usable_feature_list$id] #(Step 4)
        test_users <- load_test_users()
        test_action <- load_test_action()
        
        # Bind test data with user and Activity information
        
        test_binded_data<-cbind(test_users,test_action,main_test_samples_filtered)
        
        # Bind Training and Test Samples together ( Step 1)
        
        merged_data<-rbind(training_binded_data,test_binded_data)
        
        # Use descriptive activity names (Step 2)
        merged_data$Activity<-factor(merged_data$Activity,c("1","2","3","4","5","6"),Activities)
        
        # Creates the Tidy Data file. Grouping by SubjectId and Activity. 
        test_table <- merged_data %>% group_by(SubjectId,Activity) %>% summarise_each(funs(mean))
        write.table(test_table,"UCI_HAR_Tidy_Data.txt",row.names = FALSE)
}

## load_feature_list
##
## Loads the content of the file features.txt and returns it's content into a data frame.

load_feature_list <- function(){
        read.table("./UCI HAR Dataset/features.txt",
        sep=" ",
        col.names=c("id", "measurement_label"),
        fill=FALSE, strip.white=TRUE)
}

## determine_usable_feature_Indexes

## Determines the indexes of the features asociated to the mean and std of the
## original measurements by analyzing the name of the features. Requires the full
## feature_list returning a new feature list containing only the required ones.
## Removes the meanFreq values as considered different to mean values. 

determine_usable_feature_Indexes <- function(feature_list){
        feature_list[intersect(grep("mean()|std()",
                                    feature_list$measurement_label),
                                    grep("meanFreq()",
                                    feature_list$measurement_label,invert=TRUE)),]
}

## load_training_users

## Returns a data frame with the Id of the Subject associated to each row of the main
## training data.

load_training_users <- function(){
        read.table("./UCI HAR Dataset/train/subject_train.txt",
                   sep="",col.names = c("SubjectId"))
}

## load_training_action

## Returns a data frame containing the index associated to the actions that the subjects
## were performing when each of the row in the main training data was captured.

load_training_action <- function(){
        read.table("./UCI HAR Dataset/train/y_train.txt",
                   sep="",col.names = c("Activity")) 
}

## load_test_users

## Returns a data frame with the Id of the Subject associated to each row of the main
## test data.

load_test_users <- function(){
        read.table("./UCI HAR Dataset/test/subject_test.txt",
                   sep="",col.names = c("SubjectId"))
}

## load_test_action

## Returns a data frame containing the index associated to the actions that the subjects
## were performing when each of the row in the main test data was captured.

load_test_action <- function(){
        read.table("./UCI HAR Dataset/test/y_test.txt",sep="",
                   col.names = c("Activity")) 
}

## load_main_training_samples

## Loads the file that contains the main training samples and returns the data
## into a data frame.

load_main_training_samples <- function(feature_list){
        read.table("./UCI HAR Dataset/train/X_train.txt",sep="",
                   col.names = feature_list$measurement_label,fill=TRUE)
}

## load_main_test_sample

## Loads the file that contains the main training samples and returns the data 
##into a data frame.

load_main_test_samples <- function(feature_list){
        read.table("./UCI HAR Dataset/test/X_test.txt",sep="",
                   col.names = feature_list$measurement_label)
}



