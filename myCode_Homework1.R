#Begin

# Download dataset if doenst exist
if (!file.exists("./household_power_consumption.txt")) {
  dataset <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(dataset, "./exdata_data_household_power_consumption.zip", method="curl")
  unzip("./exdata_data_household_power_consumption.zip", exdir = ".")
}

myData <- read.table("household_power_consumption.txt", header = TRUE,
sep=";"
,na.string="?")

#Setting Variables for date-time

st <- as.Date("2007-01-02", "%Y-%d-%m")
en <- as.Date("2007-02-02", "%Y-%d-%m")
plot1 <-subset(myData, as.Date(Date, "%d/%m/%Y")>=st)
plot1 <-subset(plot1, as.Date(Date, "%d/%m/%Y")<=as.Date(en,"%Y-%d-%m"))
plot1 <- transform(plot1, Date=as.Date(Date, "%d/%m/%Y"))
df <- data.frame(
datetime=as.POSIXlt(paste(plot1$Date, plot1$Time),"GMT"),
glob=plot1$Global_active_power,
volt=plot1$Voltage,
real=plot1$Global_reactive_power,
sub1=plot1$Sub_metering_1,
sub2=plot1$Sub_metering_2,
sub3=plot1$Sub_metering_3
)

