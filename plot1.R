#Produce plot 1 - a histogram of global active power

#skip data reading if desired
source("GetData.R")
power.sample <- GetData()

png("plot1.png",h=480,w=480)
hist(power.sample$Global_active_power,col="red",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     main="Global Active Power")
dev.off()
