data <- read.table('household_power_consumption.txt',sep=';',header=TRUE)
head(data)
nrow(data)
ncol(data)

data_v1 <- data[data[,'Date'] == '1/2/2007' | data[,'Date'] == '2/2/2007',]
nrow(data_v1)
ncol(data_v1)
head(data_v1)

# Plot 2:
class(data_v1$Date)
data_v1$Date <- as.Date(data_v1$Date,format = '%d/%m/%Y')
class(data_v1$Time)
data_v1$Time <- strptime(data_v1$Time,format = '%H:%M:%S')

data_v1[data_v1[,'Date'] == '2007-02-01','Time'] <- format(data_v1[data_v1[,'Date'] == '2007-02-01','Time'],'2007-02-01 %H:%M:%S')
data_v1[data_v1[,'Date'] == '2007-02-02','Time'] <- format(data_v1[data_v1[,'Date'] == '2007-02-02','Time'],'2007-02-02 %H:%M:%S')

png("plot2.png", width=480, height=480)
plot(data_v1$Time,data_v1$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()
