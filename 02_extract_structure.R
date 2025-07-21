extract_and_structure_data <- function(data) {
  label <- data$`Table D103a : Domestic Households by Household Size and Year`[6:11]
  a2011 <- as.character(label)
  sizes2011 <- as.numeric(data$...2[6:11])
  ratio2011 <- as.character(data$...3[6:11])
  df_2011 <- data.frame("name"=label,"number"=sizes2011,"ratio"=ratio2011)
  total2011 <- as.numeric(data$...2[12])
  matrix_2011 <- matrix(c("total", total2011, 100), ncol = 3, byrow = TRUE)
  colnames(matrix_2011)<-c("name","number","ratio")
  df_2011 <- rbind(df_2011,matrix_2011)

  sizes2016<-as.numeric(data$...4[6:11])
  ratio2016 <- as.character(data$...5[6:11])
  df_2016 <- data.frame("name"=label,"number"=sizes2016,"ratio"=ratio2016)
  total2016 <- as.numeric(data$...4[12])
  matrix_2016 <- matrix(c("total", total2016, 100), ncol = 3, byrow = TRUE)
  colnames(matrix_2016)<-c("name","number","ratio")
  df_2016 <- rbind(df_2016,matrix_2016)

  a2021 <- as.character(label)
  sizes2021 <- as.numeric(data$...6[6:11])
  ratio2021 <- as.numeric(data$...7[6:11])
  df_2021 <- data.frame("name"=label,"number"=sizes2021,"ratio"=ratio2021)
  total2021 <- as.numeric(data$...6[12])
  matrix_2021 <- matrix(c("total", total2021, 100), ncol = 3, byrow = TRUE)
  colnames(matrix_2021)<-c("name","number","ratio")
  df_2021 <- rbind(df_2021,matrix_2021)

  df <- rbind(df_2011, df_2016, df_2021)
  list(df_2011=df_2011, df_2016=df_2016, df_2021=df_2021, df=df, label=label, sizes2011=sizes2011, sizes2016=sizes2016, sizes2021=sizes2021, ratio2011=ratio2011, ratio2016=ratio2016, ratio2021=ratio2021)
} 