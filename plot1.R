df <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?', colClasses=c('character','character', 'numeric', 'numeric','numeric','numeric','numeric'))
dd <- subset(df, Date=='1/2/2007' |  Date=='2/2/2007' )

png(filename='plot1.png')
hist(dd$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='Red')
dev.off()
