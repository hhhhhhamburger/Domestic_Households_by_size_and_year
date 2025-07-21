install_and_read <- function() {
  packages <- c("httr", "readr", "DT", "plotrix")
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg)
      library(pkg, character.only = TRUE)
    }
  }
  url <- "https://www.censtatd.gov.hk/en/data/stat_report/product/D5212104/att/D5212104E2021XXXXE.zip"
  destfile<- "D5212104E2021XXXXE.zip"
  download.file(url, destfile, mode = "wb")
  zipfile <- "D5212104E2021XXXXE.zip"
  unzip(zipfile)
  csv_filename <- "Table D103a.csv"
  data <- readr::read_csv(csv_filename)
  return(data)
} 