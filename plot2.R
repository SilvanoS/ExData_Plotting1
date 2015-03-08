Sys.setlocale("LC_TIME", "C")

dataset<-read.csv('household_power_consumption.txt',head=TRUE,sep=";",stringsAsFactors = FALSE,na.strings="?")
subdata<-dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", 
    width=480, 
    height=480)
plot(datetime, globalActivePower, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()