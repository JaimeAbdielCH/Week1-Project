#create plot2
plot(df$datetime, df$glob, xlab="Date", ylab="Global Active Power (kilowatts)", type="l")
dev.copy(png, file = "plot2.png")
dev.off()

