data <- read.table('household_power_consumption.txt',sep=';',header=TRUE)
head(data)
nrow(data)
ncol(data)

data_v1 <- data[data[,'Date'] == '1/2/2007' | data[,'Date'] == '2/2/2007',]
nrow(data_v1)
ncol(data_v1)
head(data_v1)

# Plot 1:
png("plot1.png", width=480, height=480)
hist(as.numeric(data_v1$Global_active_power),xlab='Global Active Power (kilowatts)',ylab = 'Frequency',main='Global Active Power',col='Red')
dev.off()
