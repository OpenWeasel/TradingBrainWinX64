USDJPY <- tq_get("USD/JPY", get = "exchange.rates", from = (Sys.Date()-180), to = Sys.Date())
ggplot(USDJPY, aes(x=date, y=exchange.rate)) + geom_line() + xlab("")


ggplot(USDJPY, aes(x=date)) + geom_histogram(binwidth = 0.01, aes(fill = ..count.., y=..density..) )