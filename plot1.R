# Coursera Exploratory Data Analysis Assignment
# Plot 1: 

# Directions 

# You must address the following questions and tasks in your exploratory analysis.
# For each question/task you will need to make a single plot. Unless specified, 
# you can use any plotting system in R to make your plot.

# Have total emissions from PM2.5 decreased in the United States from 1999 to 
# 2008? 

# Using the base plotting system, make a plot showing the total PM2.5 
# emission from all sources for each of the years 1999, 2002, 2005, and 2008.


# Step 1: Set WD and Bring in data
# Note: The rds file stores, connects, and saves R objects
setwd("~/Desktop")
NEI <- readRDS("summarySCC_PM25.rds") # Bring in data


# Step 2: "Clean" the Data
NEI$year <- as.factor(NEI$year) # Make year into factor

data <- with(NEI, aggregate(Emissions, by = list(year), sum))
# Use with() to combine/sum the Emissions by year in seperate list
names(data)[1] <- "Year"
names(data)[2] <- "Emissions"
                                        
# Step 3: Create the plot
png(filename="plot1.R", width=490, height=490, units="px")

with(data, plot(Year, Emissions, type="b", xlab="Years", ylab= "Emissions (Tons)"))
title(main="Scatter Plot of Emmisions over Years")

plot(data, type= "b", pch= 15, xlab="Years", ylab= "Emissions (Tons)")

title(main="Scatter Plot of Emmisions over Years")
dev.off()





