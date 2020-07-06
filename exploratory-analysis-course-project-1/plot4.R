library(data.table)

## read file and create table

x <- fread("household_power_consumption.txt")


## subset intended rows

y <- x[x$Date %in% c("1/2/2007", "2/2/2007")]


## arrange variables appropriately

y$Global_active_power <- as.numeric(y$Global_active_power)

y$Global_reactive_power <- as.numeric(y$Global_reactive_power)

y$Sub_metering_1 <- as.numeric(y$Sub_metering_1)

y$Sub_metering_2 <- as.numeric(y$Sub_metering_2)

y$Sub_metering_3 <- as.numeric(y$Sub_metering_3)

y$Date <- as.Date(y$Date, "%d/%m/%Y")

y$weekday <- weekdays(y$Date)

y$datetime <- paste(y$Date, y$Time)

y$datetime <- as.POSIXct(strptime(y$datetime, "%Y-%m-%d %H:%M:%S"))


## assign distribution of multiple plots

par(mfrow = c(2,2))


## create plots

with(y, plot(Global_active_power ~ datetime, type = "l", ylab = "Global Active Power", xlab = NA))

with(y, plot(Voltage ~ datetime, type = "l", ylab = "Voltage"))

with(y, plot(Sub_metering_1 ~ datetime, type = "l", ylab = "Energy sub metering", xlab = NA))

points(Sub_metering_3 ~ datetime, y, col = "blue", type = "l")

points(Sub_metering_2 ~ datetime, y, col = "red", type = "l")

legend("topright", col = c("black", "red", "blue"), lty = 1, cex = 0.5, bty = "n", legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))

with(y, plot(Global_reactive_power ~ datetime, type = "l"))


## copy file to png device

dev.copy(png, file="plot4.png", height=480, width=480)

dev.off()