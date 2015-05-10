power <- read.csv('./household_2002.txt', sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$Time <- strptime(power$Time, '%H:%M:%S', tz = "UTC") 

// Note that in this dataset missing values are coded as ?.

hist(power$Global_active_power, 
     breaks=20, col='red', 
     main='Global Active Power', 
     xlab='Global Active Power(kilowatts)')