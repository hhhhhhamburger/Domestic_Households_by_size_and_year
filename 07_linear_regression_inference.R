linear_regression_and_inference <- function(df, df_2011, df_2016, df_2021) {
  model <- lm(number~name+ratio,data = df)
  print(summary(model))
  print(t.test(as.numeric(df_2011$number[1:6]),as.numeric(df_2016$number[1:6])))
  print(t.test(as.numeric(df_2016$number[1:6]),as.numeric(df_2021$number[1:6])))
} 