#load ggplot2
library("ggplot2")
options(scipen=999)
#read prediction file
PredictedPercentage = read.csv("prediction.txt")
Frequency <- data.frame(PredictedPercentage)
names(Frequency) <- c("prediction")
#export my table
write.table(Frequency, file = "dataPoints.csv", row.names=FALSE, na="", col.names=FALSE, quote=FALSE, sep = ",")
#create image
png(filename="tempprediction.png")
#plot
ggplot(Frequency, aes(x=prediction)) + geom_histogram(binwidth = 0.001, color="black", fill="white", aes(fill = ..count.., y=..density..) )
dev.off()
my.data = read.csv("dataPoints.csv")
standarddeviation <- (sd(table(my.data))/100)
write.table(standarddeviation, file = "SD.txt", na="", row.names=FALSE, quote=FALSE, col.names=FALSE)
#what ever reason I cannot figure out why I can't simply use the mean function.
#I have to use the sum function because the mean function just shows how many columns are in the table.
#looks ugly needs_fix
meanofdata <- (sum(my.data)/(mean(table(my.data))))*100
write.table(meanofdata, file = "MEAN.txt", na="", row.names=FALSE, quote=FALSE, col.names=FALSE)

#BeautifulPlot
#Frequency <- data.frame(PredictedPercentage)
#ggplot(Frequency, aes(x=X.1.00)) + geom_histogram(binwidth = 0.2, aes(fill = ..count.., y=..density..) )#
# rounded graph
#ggplot(Frequency, aes(x=prediction)) + geom_density(size=1, fill = "#0087D5", color="#FFFFFF", alpha=0.40)