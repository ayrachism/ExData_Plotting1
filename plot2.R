## Plot 2: Global Active Power vs Weekdays

source("loadData.R")

## Making plot

with(power, plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

## Save in png

dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()



