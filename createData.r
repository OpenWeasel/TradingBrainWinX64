options(scipen=999)
historicaldata = read.csv("Import.csv")
keeps <- c("Price", "Open", "High", "Low")
keepsChange <- c("Change..")
#ChangeShifted <- data.frame(historicaldata[keepsChange][-nrow(historicaldata),])
ChangeShifted <- historicaldata[keepsChange][-nrow(historicaldata),]
ConvertedChange <- data.frame(as.numeric(sub("%", "", ChangeShifted)))
Converted2=(ConvertedChange[]/(100))
colnames(Converted2) <- "Change"
write.table(data.frame(Converted2), file = "changes.csv", row.names=FALSE, na="", col.names=FALSE, quote=FALSE, sep = ",")
#write.table(data.frame((historicaldata[keeps][-1,])), file = "historical.csv", row.names=FALSE, na="", col.names=FALSE, quote=FALSE, sep = ",")
hisData <- historicaldata[keeps][-1,]
hisData$Change <- Converted2$Change
#write.table(data.frame((historicaldata[keeps][-1,])), file = "DATA.txt", row.names=FALSE, na="", col.names=FALSE, quote=FALSE, sep = ",")
write.table(data.frame(hisData), file = "DATA.txt", row.names=FALSE, na="", col.names=FALSE, quote=FALSE, sep = ",")



#merge(Converted2, hisData,by="ID")
#total <- merge(data frameA,data frameB,by="ID")
#hisData$Change <- 
#colnames(X) <- c("good", "better")
#colnames(trSamp) <- "newname2"