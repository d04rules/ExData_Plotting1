data<-read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings="?")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
data_filtered<-data%>%filter(Date == '2007-02-01'|Date=='2007-02-02')
data_filtered<-data_filtered%>%mutate(datetime=paste(Date,Time))
data_filtered$datetime<-strptime(data_filtered$datetime,"%Y-%m-%d %H:%M:%S")
plot(data_filtered$datetime,data_filtered$Global_active_power, type="l",
     xlab="",ylab="Global Active Power (kilowatts)")
