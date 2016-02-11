#create plot3
plot(df$datetime, df$sub1, type="l", xlab="", ylab="Energy Sub Metering")
with(df, lines(df$datetime, df$sub2),col="blue")
with(df, lines(df$datetime, df$sub2),col="red")
with(df, lines(df$datetime, df$sub2,col="red"))
with(df, lines(df$datetime, df$sub3,col="blue"))
legend("topright", lwd=2, col=c("black", "red", "blue"), legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()
