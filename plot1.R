##assume the file is  in the working direcotry
read.table("household_power_consumption.txt",sep=";",header=T)->dati
which(dati[,1]=="1/2/2007"|dati[,1]=="2/2/2007")->datired
dati[datired,]->datinew
png(width=480,height=480,file="plot1.png")
with(datinew,hist(as.numeric(as.vector(Global_active_power)),col="red",
                             xlab="Global Active Power (kilowatts)",
                             main="Global Active Power"))
dev.off()
