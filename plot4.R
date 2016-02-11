#create plot4
png(filename = "plot4.png", width = 480, height = 480)

#Table
par(mfrow = c(2,2))
#Plot1
plot(df$datetime, df$glob, xlab="Date", ylab="Global Active Power (kilowatts)", type="l")
#Plot2
plot(df$datetime, df$volt, xlab="Datetime", ylab="Voltage", type="l")
#Plot3
plot(df$datetime, df$sub1, type="l", xlab="", ylab="Energy Sub Metering")
with(df, lines(df$datetime, df$sub2),col="blue")
with(df, lines(df$datetime, df$sub2),col="red")
with(df, lines(df$datetime, df$sub2,col="red"))
with(df, lines(df$datetime, df$sub3,col="blue"))
legend("topright", lwd=2, col=c("black", "red", "blue"), legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
#Plot4
plot(df$datetime, df$real, xlab="Datetime", ylab="Global_reacttive_power", type="l", ylim=range(0,0.5))

dev.off()