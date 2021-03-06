myData <- read.table("household_power_consumption.txt", sep=";", na.strings = "?",header=TRUE, stringsAsFactors =FALSE)
plotData <- subset(myData, myData$Date == "1/2/2007" | myData$Date == "2/2/2007")
png("plot1.png", width = 480, height = 480)
hist(plotData$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()