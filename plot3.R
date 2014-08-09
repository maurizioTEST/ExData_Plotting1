##assume the file is  in the working direcotry
read.table("household_power_consumption.txt",sep=";",header=T)->dati
which(dati[,1]=="1/2/2007"|dati[,1]=="2/2/2007")->datired
dati[datired,]->x1
y=as.Date(x1[,1],format='%d/%m/%Y')
z=as.character(x1[,2])
giorni=strptime(paste(y, z),"%Y-%m-%d %H:%M:%S")
png(width=480,height=480,file="plot3.png")
with(datinew,plot(giorni,as.numeric(as.vector(Sub_metering_1)),type="l",xlab="",
                  ylab="Energy sub metering"))
with(datinew,points(giorni,as.numeric(as.vector(Sub_metering_2)),type="l",xlab="",
                    col="red")
)
with(datinew,points(giorni,as.numeric(as.vector(Sub_metering_3)),type="l",xlab="",
                    col="blue")
)
legend("topright",paste("Sub_metering",1:3,sep="_"),col=c(1,2,4),lty=1)
dev.off() 
