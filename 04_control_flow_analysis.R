control_flow_analysis <- function(data) {
  data<-as.data.frame(data)
  if (data[12,2] < data[12,6]) {
    cat("The number of households increased between 2011 and 2021.\n")
  } else {
    cat("The number of households decreased between 2011 and 2021.\n")
  }

  Final_year_percentages <- as.numeric(data[6:11,7])
  i <- 1
  while (i <= length(Final_year_percentages)) {
    if (Final_year_percentages[i] > 20) {
      cat("In 2021, the percentage of household size",i, "was greater than 20%.\n")
    } else {
      cat("In 2021, the percentage of household size",i, "was smaller than 20%.\n")
    }
    i <- i + 1
  }

  household_sizes <- c(1, 2, 3, 4, 5, "6 and over")
  for (a in 1:length(household_sizes)) {
    year1_percent <- as.numeric(data[a+5, 3])
    year2_percent <- as.numeric(data[a+5, 7])
    percent_change <- (year2_percent - year1_percent) / year1_percent * 100
    if (percent_change > 0) {
      cat("Household size", household_sizes[a], "increased by", percent_change, "%\n")
    } else if (percent_change < 0) {
      cat("Household size", household_sizes[a], "decreased by", percent_change, "%\n")
    } else {
      cat("Household size", household_sizes[a], "did not change\n")
    }
  }
} 