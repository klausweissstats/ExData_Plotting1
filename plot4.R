#get data
data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)
data <- subset(data, as.Date(data$Date, "%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") | as.Date(data$Date, "%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
#plot

par(mfcol=c(2,2))
datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

#plot1
datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
plot(y= as.numeric(as.character(data$Global_active_power)), x = datetime, type="n", ylab="Global Active Power(kilowatts)", xlab=NA)
#lines
lines(y= as.numeric(as.character(data$Global_active_power)), x = datetime)

#plot2
plot(y = as.numeric(as.character(data$Sub_metering_1)), x = datetime, type="n", ylab="Energy sub metering", xlab=NA)
#lines
lines(y = as.numeric(as.character(data$Sub_metering_1)), x = datetime, col="black")
lines(y = as.numeric(as.character(data$Sub_metering_2)), x = datetime, col="red")
lines(y = as.numeric(as.character(data$Sub_metering_3)), x = datetime, col="blue")
#legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lwd=1, bty="n", cex=.8)

#plot3
plot(y = as.numeric(as.character(data$Voltage)), x = datetime, type="n", ylab="Voltage")
#lines
lines(y = as.numeric(as.character(data$Voltage)), x = datetime)

#plot4
plot(y = as.numeric(as.character(data$Global_reactive_power)), x = datetime, type="n", ylab = "Global_reactive_label")
#lines
lines(y = as.numeric(as.character(data$Global_reactive_power)), x = datetime)
