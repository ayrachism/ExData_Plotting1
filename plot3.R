## Plot 2: Global Active Power vs Weekdays

source("loadData.R")

## Making plot

plot(power$Time, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Time, power$Sub_metering_2, type = "l",col = "red")
lines(power$Time, power$Sub_metering_3, type = "l",col = "blue")
legend("topright", legend = names(power)[7:9], lty = 1, col=c("black","red", "blue"))

## Save in png

dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()

