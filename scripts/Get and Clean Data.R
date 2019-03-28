
install.packages("data.table")
install.packages("lubridate")

library(data.table)
library(lubridate)

#Loading data

dthousepwr <- read.table("./household_power_consumption.txt", header=T, 
                         sep=';',na.strings='?')

dthousepwr <- dthousepwr[dthousepwr$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(dthousepwr$Date, dthousepwr$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
dthousepwr<- cbind(SetTime,dthousepwr)
