source("01_install_and_read.R")
source("02_extract_structure.R")
source("03_show_datatables.R")
source("04_control_flow_analysis.R")
source("05_visualizations.R")
source("06_summary_statistics.R")
source("07_linear_regression_inference.R")

main <- function() {
  data <- install_and_read()
  structured <- extract_and_structure_data(data)
  show_datatables(structured$df_2011, structured$df_2016, structured$df_2021, structured$df)
  control_flow_analysis(data)
  visualizations(data, structured$label, structured$sizes2011, structured$sizes2016, structured$sizes2021, structured$ratio2011, structured$ratio2016, structured$ratio2021)
  summary_statistics(structured$sizes2011, structured$sizes2016, structured$sizes2021)
  linear_regression_and_inference(structured$df, structured$df_2011, structured$df_2016, structured$df_2021)
}

main() 