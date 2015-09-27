## Load Data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## sum total emmisions by year
PM2.5Data = aggregate(Emissions ~ year,NEI, sum)


plot(PM2.5Data)
lines(PM2.5Data$year, PM2.5Data$Emissions,)

dev.copy(png, file="plot1.png", width=480, height=480) 
dev.off() 
