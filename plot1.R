## Plot 1- Frequency vs Global Active Power

## Loading data
source("loadData.R")

## Plot

hist(power$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## Save in png

dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()
