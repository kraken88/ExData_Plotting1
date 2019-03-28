
# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot4.png',width=480,height=480,units='px')

# plot data
labels      <- c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
columnlines <- c("black", "red", "blue")
par(mfrow = c(2, 2)) 

plot(dthousepwr$SetTime,  dthousepwr$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(dthousepwr$SetTime,  dthousepwr$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(dthousepwr$SetTime,  dthousepwr$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dthousepwr$SetTime, dthousepwr$Sub_metering_2, type="l", col="red")
lines(dthousepwr$SetTime, dthousepwr$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, col=columnlines, lty=1, lwd=2.5)
plot(dthousepwr$SetTime, dthousepwr$Global_reactive_power, type="l", xlab="datetime", ylab="Global reactive Power")

# close device
x<-dev.off()
