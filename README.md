# Analyzes data on Domestic Households by Household size and year.

This repository contains a series of R scripts for data analysis, visualization, and statistical inference, likely as part of coursework for STAT S261F.

## File Overview

- **01_install_and_read.R**  
  Installs required packages (if necessary) and reads in the primary dataset.

- **02_extract_structure.R**  
  Extracts and structures the data for further analysis.

- **03_show_datatables.R**  
  Displays the main data tables for different years and the combined dataset.

- **04_control_flow_analysis.R**  
  Performs control flow analysis on the dataset.

- **05_visualizations.R**  
  Generates visualizations based on the data and extracted features.

- **06_summary_statistics.R**  
  Computes and displays summary statistics for the data.

- **07_linear_regression_inference.R**  
  Conducts linear regression analysis and statistical inference.

- **08_main.R**  
  The main script that sources all other scripts and runs the complete analysis pipeline.

## How to Run

1. Make sure you have R installed on your system.
2. Open R or RStudio in this directory.
3. Run the main script:
   ```r
   source("08_main.R")
   ```
   This will execute the entire analysis workflow, including data loading, processing, visualization, and statistical analysis.

## Notes

- Ensure your working directory is set to the folder containing these scripts.
- The scripts may require specific data files to be present in the same directory. Please check the code in `01_install_and_read.R` for data file requirements.
- All required R packages should be installed automatically by the scripts, but you may need internet access for the first run.

## License

This project is for educational purposes. 
