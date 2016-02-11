#create plot3
source("myCode_Homework1.R")
png(filename = "plot3.png", width = 480, height = 480)

plot(df$datetime, df$sub1, type="l", xlab="", ylab="Energy Sub Metering")
with(df, lines(df$datetime, df$sub2),col="blue")
with(df, lines(df$datetime, df$sub2),col="red")
with(df, lines(df$datetime, df$sub2,col="red"))
with(df, lines(df$datetime, df$sub3,col="blue"))
legend("topright", lwd=2, col=c("black", "red", "blue"), legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))

dev.off()
