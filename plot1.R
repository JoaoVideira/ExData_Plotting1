dir<-getwd()
setwd(dir)

# primeiro grafico
#Lendo, nomeando e selecionando dados sobre poder de consumo
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#utilizando a funcao hist, gerando grafico
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# colocando titulo no grafico 
title(main="Global Active Power")

