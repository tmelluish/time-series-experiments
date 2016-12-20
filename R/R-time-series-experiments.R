install.packages("data.table")
install.packages("TTR")
install.packages("lubridate")
install.packages("zoo")

require("data.table")
require("TTR")
require("lubridate")
require("zoo")

setwd("c:/users/tom.melluish/src/time-series-experiments")


sample_data <-fread("data/sample-data.csv")

posixct_dates <- as.POSIXct(sample_data$Date,format="%Y-%m-%dT%H:%M:%S")

lubridate_dates <- ymd_hms(sample_data$Date)

metric.ts <- zoo(x=sample_data$Metric,order.by=ymd_hms(sample_data$Date))
plot(metric.ts)


#metric.ts <- ts(sample_data$Metric,frequency=8760,start=)

#plot.ts(metric.ts)



