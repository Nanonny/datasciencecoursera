library(data.table)

## read file and create table

x <- fread("household_power_consumption.txt")


## subset intended rows

y <- x[x$Date %in% c("1/2/2007", "2/2/2007")]


## arrange variables as appropriate

y$Global_active_power <- as.numeric(y$Global_active_power)

y$Date <- as.POSIXct(y$Date)

y$weekday <- weekdays(y$Date)

y$datetime <- paste(y$Date, y$Time)

y$datetime <- as.POSIXct(strptime(y$datetime, "%Y-%m-%d %H:%M:%S"))


## create plot

with(y, plot(Global_active_power ~ datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = NA))


## copy file to png device

dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()
