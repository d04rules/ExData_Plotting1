data<-read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings="?")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
data_filtered<-data%>%filter(Date == '2007-02-01'|Date=='2007-02-02')
hist(data_filtered$Global_active_power, col="red", 
     xlab="Gloabal Active Power (kilowatts)",main="Global Active Power")

