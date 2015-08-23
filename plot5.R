# Coursera Exploratory Data Analysis Assignment
# Plot 5: 

# Directions 

# You must address the following questions and tasks in your exploratory analysis.
# For each question/task you will need to make a single plot. Unless specified, 
# you can use any plotting system in R to make your plot.

# How have emissions from motor vehicle sources changed from 1999–2008 in 
# Baltimore City?

# Step 1: Set WD and Bring in data
# Note: The rds file stores, connects, and saves R objects
setwd("~/Desktop")
NEI <- readRDS("summarySCC_PM25.rds") # Bring in data
SCC <- readRDS("Source_Classification_Code.rds")

# Step 2: "Clean" the Data
library(dplyr)
library(ggplot2)
NE_data <- tbl_df(NEI) # Usable data frame form w/ dplyr package
SC_data <- tbl_df(SCC)

# Step 3: Create the plot
png(filename= "plot3.png", width=480, height=480, units="px") # Set image format