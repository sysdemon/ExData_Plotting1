df <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?', colClasses=c('character','character', 'numeric', 'numeric','numeric','numeric','numeric'))
dd <- subset(df, Date=='1/2/2007' |  Date=='2/2/2007' )
dd$DateTime <- strptime( paste(dd$Date, dd$Time), "%d/%m/%Y %H:%M:%S" )

png(filename='plot2.png')
plot(dd$DateTime, dd$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
