library(tidyquant)
symbol <- readChar("symbol.txt",nchars=1e6)
data <- tq_get(symbol, get = "exchange.rates", from = (Sys.Date()-180), to = Sys.Date())
png(filename="historical180.png")
ggplot(data, aes(x=date, y=exchange.rate, group=1)) + geom_line(colour = "black", size = 1)
dev.off()