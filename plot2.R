##assume the file is  in the working direcotry
read.table("household_power_consumption.txt",sep=";",header=T)->dati
which(dati[,1]=="1/2/2007"|dati[,1]=="2/2/2007")->datired
dati[datired,]->x1
y=as.Date(x1[,1],format='%d/%m/%Y')
z=as.character(x1[,2])
giorni=strptime(paste(y, z),"%Y-%m-%d %H:%M:%S")
png(width=480,height=480,file="plot2.png")
with(datinew,plot(giorni,as.numeric(as.vector(Global_active_power)),type="l",pch=19,xlab="",
                  ylab="Global Active Power (kilowatts)"))
dev.off()
