
# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(dthousepwr$SetTime, dthousepwr$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# close device
x<-dev.off()