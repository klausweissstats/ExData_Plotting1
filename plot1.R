#get data
data <- read.table("household_power_consumption.txt", sep = ';', header = TRUE)
data <- subset(data, as.Date(data$Date, "%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") | as.Date(data$Date, "%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
#plot
hist(as.numeric(as.character(data$Global_active_power)), col = "red", main="Global active power", xlab = "Global Active Power (kilowatts)")