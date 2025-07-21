show_datatables <- function(df_2011, df_2016, df_2021, df) {
  library(DT)
  datatable(df_2011)
  datatable(df_2016)
  datatable(df_2021)
  datatable(df)
} 