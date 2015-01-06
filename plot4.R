#Produce plot 4 - line plots of numeric variables over time.


source("GetData.R")
power.sample <- GetData()

png("plot4.png",h=504,w=504)
par(mfrow=c(2,2))
#This is nearly identical to plot 2.
plot( Global_active_power ~ Date, power.sample, type="l",col="black",
      xlab="",ylab="Global Active Power")

plot( Voltage ~ Date, power.sample, type="l",col="black",
      xlab="datetime",ylab="Voltage")

#This is nearly identical to plot 3. 
plot(Sub_metering_1 ~ Date, power.sample, type="l",col="black",
     ylab="Energy sub metering", xlab="")
lines(Sub_metering_2 ~ Date, power.sample, type="l", col="red")
lines(Sub_metering_3 ~ Date, power.sample, type="l", col="blue")
legend("topright",paste("Sub_metering_",1:3,sep=""),
       col=c("black","red","blue"),lwd=1,bty="n")

#fourth panel
plot(Global_reactive_power ~ Date, power.sample, type="l",col="black",
     ylab="Global_reactive_power",xlab="datetime")
dev.off()

