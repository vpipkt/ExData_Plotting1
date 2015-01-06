#Produce plot 3 - line plot over time of sub meters with legend


source("GetData.R")
power.sample <- GetData()

png("plot3.png",h=504,w=504)
plot(Sub_metering_1 ~ Date, power.sample, type="l",col="black",
     ylab="Energy sub metering", xlab="")
lines(Sub_metering_2 ~ Date, power.sample, type="l", col="red")
lines(Sub_metering_3 ~ Date, power.sample, type="l", col="blue")
legend("topright",paste("Sub_metering_",1:3,sep=""),
       col=c("black","red","blue"),lwd=1)
dev.off()

