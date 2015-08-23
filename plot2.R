# Coursera Exploratory Data Analysis Assignment
# Plot 2: 

# Directions 

# You must address the following questions and tasks in your exploratory analysis.
# For each question/task you will need to make a single plot. Unless specified, 
# you can use any plotting system in R to make your plot.

# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.


# Step 1: Set WD and Bring in data
# Note: The rds file stores, connects, and saves R objects
setwd("~/Desktop")
NEI <- readRDS("summarySCC_PM25.rds") # Bring in data


# Step 2: "Clean" the Data
library(dplyr)
data <- tbl_df(NEI) # Usable data frame form w/ dplyr package
data <- data %>% filter(data$fips == "24510") # Subset the data for Maryland

data <- with(data, aggregate(Emissions, by = list(year), sum))
# Use with() to combine/sum the Emissions by year in seperate list
names(data)[1] <- "Year" # Rename the Column
names(data)[2] <- "Emissions" # Rename the Column

# Step 3: Create the plot
png(filename= "plot1.png", width=480, height=480, units="px") # Set pic format





























