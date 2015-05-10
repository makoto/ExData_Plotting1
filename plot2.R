power <- read.csv('./household_2002.txt', sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$DateTime <- as.POSIXct(paste(power$Date, power$Time))
with(power, 
     plot(DateTime, 
          Global_active_power, 
          type="l", 
          ylab='Global Active Power(kilowatts)', 
          xlab=''
          )
    )

