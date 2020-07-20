##### Loading dataset #######

## Following lines of code commented (with ##) as data not required to be downloaded and printed more than once 

## url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## 
## temp <- tempfile()
## download.file(url, temp)
## dir.create("data")
## unzip(temp, exdir = "data")
## unlink(temp)
 
original_power <- read.table(file = "./data/household_power_consumption.txt", sep = ";", header = TRUE, nrows = 2100000, na.strings = "?")
## head(power)
## str(power) # Date and Time are in chr, rest in num format

power <- original_power[original_power$Date=="1/2/2007" | original_power$Date=="2/2/2007",]  # taking only two dates
## str(power)

library(plyr)
power <- mutate(power, Date = as.Date(Date, format = "%d/%m/%Y")) # converting to date format
power <- mutate(power, Time = strptime(paste(Date,Time), format = "%Y-%m-%d %H:%M:%S")) #combining date and time into one
## str(power)

# Note: conversion done later to save time of computation
