#create plot1
png(filename = "plot1.png", width = 480, height = 480)
hist(plot1$Global_active_power,col="red",freq=TRUE, xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()