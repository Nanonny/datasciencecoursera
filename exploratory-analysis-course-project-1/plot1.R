library(data.table)

## read file and create table

x <- fread("household_power_consumption.txt")

## extract rows

y <- x[x$Date %in% c("1/2/2007", "2/2/2007")]


## arrange variables as appropriate

y$Global_active_power <- as.numeric(y$Global_active_power)

y$Date <- as.POSIXct(y$Date)


## create histogram

hist(y$Global_active_power, col = "red", xlab = "Global active power (kilowatts)", ylab = "Frequency", breaks = 12, main = "Global Active Power")


## copy file to png device

dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()


