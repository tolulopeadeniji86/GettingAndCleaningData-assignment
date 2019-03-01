Getting And Cleaning Data - Peer-graded assignment
======

The R script in `run_analysis.R` file generates tidy data from raw dataset "Human Activity Recognition Using Smartphones Data Set" obtained at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Script downloads dataset, unzpis it and starts to perform analysis. It combines `train` and `test` datasets and extracts mean and standard deviation for each measurement. Result of this operation is stored in `data` object and saved in `data.txt` file. 

Additionally it extracts `aggregatedData` data frame from it, which contains mean of each column from `data` object for each activity and subject. This object is saved to `aggregatedData.txt` file.