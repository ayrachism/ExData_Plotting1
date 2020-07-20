## Plot 2: Global Active Power vs Weekdays

source("loadData.R")

## Making plots

## Setting frame

par(mfcol = c(2,2))

## Plot 1

with(power, plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

## Plot 2

plot(power$Time, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Time, power$Sub_metering_2, type = "l",col = "red")
lines(power$Time, power$Sub_metering_3, type = "l",col = "blue")
legend("topright", legend = names(power)[7:9], lty = 1, col=c("black","red", "blue"), bty = "n")

## Plot 3

plot(power$Time, power$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## Plot 4

plot(power$Time, power$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

## Save in png

dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()

