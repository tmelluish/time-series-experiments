install.packages("data.table")
install.packages("TTR")

require("data.table")
require("TTR")

setwd("c:/users/tom.melluish/src/time-series-experiments")


sample_data <-fread("data/sample-data.csv")

posixct_dates <- as.POSIXct(sample_data$Date,format="%Y-%m-%dT%H:%M:%S")


#metric.ts <- ts(sample_data$Metric,frequency=8760,start=)

#plot.ts(metric.ts)



