#get data
data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)
data <- subset(data, as.Date(data$Date, "%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") | as.Date(data$Date, "%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
#plot
datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
plot(y= as.numeric(as.character(data$Global_active_power)), x = datetime, type="n", ylab="Global Active Power(kilowatts)", xlab=NA)
lines(y= as.numeric(as.character(data$Global_active_power)), x = datetime)
