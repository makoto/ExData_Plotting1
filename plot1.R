png("plot1.png", width=4, height=4, units="in", res=300)

power <- read.csv('./household_2002.txt', sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$Time <- strptime(power$Time, '%H:%M:%S', tz = "UTC") 


hist(power$Global_active_power, 
     breaks=20, col='red', 
     main='Global Active Power', 
     xlab='Global Active Power(kilowatts)')

dev.off() 