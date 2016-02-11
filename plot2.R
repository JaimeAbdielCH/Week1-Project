#create plot2
png(filename = "plot2.png", width = 480, height = 480)
plot(df$datetime, df$glob, xlab="Date", ylab="Global Active Power (kilowatts)", type="l")
dev.off()

