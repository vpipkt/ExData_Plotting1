## This script reads in the data for the plotting exercise.

# "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# unzipped outside R into the current working directory.

GetData <- function(){
    
    all.power <- read.table("household_power_consumption.txt",header=T,sep=";",
                        na.strings="?", 
                        colClasses=c(rep("character",2),rep("numeric",7)))
    #* The dataset has 2,075,259 rows and 9 columns.
    if (nrow(all.power) != 2075259)
        stop("Error reading in data, incorrect row count.")
    
    #convert date
    all.power$Date2 <- strptime(paste(all.power$Date,all.power$Time),
                                "%d/%m/%Y %H:%M:%S")

    
    #2007-02-01 and 2007-02-02
    power.sample <- subset(all.power,Date2 >= "2007-02-01" & Date2 <= "2007-02-03")
    rm(all.power)
    #Store date as a Date class
    power.sample$Date<- as.POSIXct(power.sample$Date2)
    
    return(power.sample)
}



