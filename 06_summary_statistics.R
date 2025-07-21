summary_statistics <- function(sizes2011, sizes2016, sizes2021) {
  Summary_statistics_2011<-summary(sizes2011)
  Standard_deviation_2011<-sd(sizes2011)
  Summary_statistics_2016<-summary(sizes2016)
  Standard_deviation_2016<-sd(sizes2016)
  Summary_statistics_2021<-summary(sizes2021)
  Standard_deviation_2021<-sd(sizes2021)
  print(list(
    Summary_statistics_2011=Summary_statistics_2011,
    Standard_deviation_2011=Standard_deviation_2011,
    Summary_statistics_2016=Summary_statistics_2016,
    Standard_deviation_2016=Standard_deviation_2016,
    Summary_statistics_2021=Summary_statistics_2021,
    Standard_deviation_2021=Standard_deviation_2021
  ))
} 