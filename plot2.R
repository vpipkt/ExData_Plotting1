#Produce plot 2 - a line plot of global active power versus time

source("GetData.R")
power.sample <- GetData()

png("plot2.png",h=480,w=480)
plot( Global_active_power ~ Date, power.sample, type="l",col="black",
      xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
