
# load data
source('scripts/Get and Clean Data.R')

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(dthousepwr$Global_active_power, col = "red", breaks = 200, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Turn off device
x<-dev.off()