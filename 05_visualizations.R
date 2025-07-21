visualizations <- function(data, label, sizes2011, sizes2016, sizes2021, ratio2011, ratio2016, ratio2021) {
  # Pie 2016
  name2016<- paste("number:",sizes2016)
  pie(sizes2016, labels = paste(name2016,"for",paste0(ratio2016,'%')), radius = 1, main = "Pie chart for 2016", 
      col = rainbow(length(sizes2016)))
  legend("topright",paste(c('"1:"','"2:"','"3:"','"4:"','"5:"','"6 and over:"'),sizes2016),cex=0.8,fill=rainbow(length(sizes2016)))

  # Pie 2011
  name2011 <- paste("number:",sizes2011)
  library(plotrix)
  pie3D(sizes2011, labels = paste(name2011,"for",paste0(ratio2011,'%')), radius = 1, main = "Pie chart for 2011", 
        col = rainbow(length(sizes2011)))
  legend("topright",paste(c('"1:"','"2:"','"3:"','"4:"','"5:"','"6 and over:"'),sizes2011),cex=0.8,fill=rainbow(length(sizes2011)))

  # Pie 2021
  pie2021<-as.numeric(ratio2021)
  pct <- round(100*pie2021/sum(pie2021),digits = 1)
  pie_labels<-paste(pct, "%","=",label)
  pie(pie2021,
      labels=pie_labels,
      radius=1,
      main="Pie chart for 2021",
      col=rainbow(length(pie2021)))
  legend("topright",paste(c('1:','2:','3:','4:','5:','6 and over:'),sizes2021),cex=0.7,fill=rainbow(length(pie2021)))

  # Barplot
  data_2011 <- as.numeric(data[6:12, 2])
  data_2016 <- as.numeric(data[6:12, 4])
  data_2021 <- as.numeric(data[6:12, 6])
  size <- c('1','2','3','4','5','6 and over','Total')
  barplot(
    rbind(data_2011, data_2016, data_2021),
    beside = TRUE,
    col = c("blue", "green", "orange"),
    xlab = "Household size",
    ylab = "Domestic households number",
    names.arg = size,
    legend.text = c("2011", "2016", "2021"),
    args.legend = list(x = "top")
  )

  # Line plot
  plot(sizes2011, main = "Domestic Households by Household Size and Year", 
       xlab = "Household Size", xlim = c(1, 6), 
       ylab = "Domestic Households Number", ylim = c(0, 800000),
       cex = 1.2, lwd = 2, col = "red", type = 'o')
  lines(sizes2016, pch = 2, cex = 1.2, lwd = 2, col = "blue", type = 'o')
  lines(sizes2021, pch = 5, cex = 1.2, lwd = 2, col = "green", type = 'o')
  legend("topright", c("2011", "2016", "2021"), pch = c(1, 2, 5), 
         col = c("red", "blue", "green"), bg = "white")
  total<-c(2368796,2509734,2674161)

  # Total plot
  plot(total, main = "Total", xlab = "Year", ylab = "Domestic Households Number", 
       ylim = c(2000000,3000000), col = "black", type = 'o',xaxt="n")
  axis(1, at = 1:3, labels = c("2011", "2016", "2021"))

  # Boxplots
  boxplot(fivenum(sizes2011),main="2011",horizontal = TRUE)
  boxplot(fivenum(sizes2016),col = "green",main="2016",horizontal = TRUE)
  boxplot(fivenum(sizes2021),col = "blue",main="2021",horizontal = TRUE)
} 