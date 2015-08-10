#get data
data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)
data <- subset(data, as.Date(data$Date, "%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") | as.Date(data$Date, "%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
#plot
datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
#plot
plot(y = as.numeric(as.character(data$Sub_metering_1)), x = datetime, type="n", ylab="Energy sub metering", xlab=NA)
#lines
lines(y = as.numeric(as.character(data$Sub_metering_1)), x = datetime, col="black")
lines(y = as.numeric(as.character(data$Sub_metering_2)), x = datetime, col="red")
lines(y = as.numeric(as.character(data$Sub_metering_3)), x = datetime, col="blue")
#legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lwd=1, cex=0.75, x.intersp = 0.7, y.intersp = 0.4)