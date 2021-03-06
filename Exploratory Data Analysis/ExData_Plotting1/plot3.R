data <- read.table("../household_power_consumption.txt", sep=";",skip=66637,nrows=2881)
names(data) <- unlist(read.table("../household_power_consumption.txt", sep=";",nrows=1))
data$datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
png(filename='plot3.png')
par(bg=NA)
plot(x=data$datetime, y=data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(x=data$datetime, y=data$Sub_metering_2, xlab="", ylab="Energy sub metering", type="l", col="red")
lines(x=data$datetime, y=data$Sub_metering_3, xlab="", ylab="Energy sub metering", type="l", col="blue")
legend("topright", lty=c(1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()