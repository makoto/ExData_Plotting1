power <- read.csv('./household_2002.txt', sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$DateTime <- as.POSIXct(paste(power$Date, power$Time))

with(power, 
     plot(DateTime, 
          Sub_metering_1, 
          type="l", 
          ylab='Energy sub metering', 
          xlab=''
     )
)
with(power,
     lines(DateTime, 
           Sub_metering_2, 
           col='red'
     )
)
with(power,
     lines(DateTime, 
           Sub_metering_3, 
           col='blue'
     )
)
legend("topright", 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col=c('black', 'red', 'blue'), pch='-')
