#create plot1
hist(plot1$Global_active_power,col="red",freq=TRUE, xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()