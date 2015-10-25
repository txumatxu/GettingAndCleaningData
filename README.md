# GettingAndCleaningData
Repository containing the project developed in the course Getting And Cleaning Data. (Johns Hopkins/Coursera)

This repository contains the script run_analysys.R that combines the information from the training and test sets from the 
Human Activity Recognition Using Smartphones Dataset. The repository also contains a sample file with the output tidy data. 
UCI_HAR_Tidy_Data.txt.

# Scripts description

The script contains a main function called run_analysis as well as the following secondary functions:

 - load_feature_list -  Loads the content of the file features.txt and returns it's content into a data frame.
 - determine_usable_feature_Indexes - Determines the indexes of the features asociated to the mean and std of the original measurements by analyzing the name of the features. Requires the full feature_list returning a new feature list containing only the required ones. Removes the meanFreq values as considered different to mean values. 
 - load_training_users - Returns a data frame with the Id of the Subject associated to each row of the main training data.
 - load_training_action - Returns a data frame containing the index associated to the actions that the subjects were performing when each of the row in the main training data was captured.
 - load_test_users - Returns a data frame with the Id of the Subject associated to each row of the main test data.
 - load_test_action - Returns a data frame containing the index associated to the actions that the subjects were performing when each of the row in the main test data was captured.
 - load_main_training_samples - Loads the file that contains the main training samples and returns the data into a data frame.
 - load_main_test_sample - Loads the file that contains the main training samples and returns the data into a data frame.
 
The main function calls the rest of the functions in order to tidy the data. This are the main operations performed by the script:

- Loads the feature list from the file features.txt and determines de indexes of those variables that contain mean and std measures. This is done by subsetting the variables taking into account their name.
- Then both for the training set as for the test set the following operations are performed:
  - Load the main samples from the corresponding x_train or x_test file.
  - Load the volunteers id for each signal sample from the subject_train or subject_test file.
  - Load the activity tag for each signal sample from the y_test or y_train file. 
  - Subset the sample data by croping the features that correspond to mean or std measures only. 
  - Combine the samples with the volunteer identification (SubjectId) as the activity represented by it's index.

- Finaly both dataframes corresponding to the test set and the training set are combined row by row in a single data frame.
- The
# Scripts usage
