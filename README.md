# Heart Rate Analysis
Analyzing the relationship between heart rate, incline rate, and exercise type

## Description
This project analyzes the effect of exercise on heart rate by using statistical modeling techniques to evaluate changes in heart rate pre and post-exercise. The goal is to assess how various factors such as exercise type and incline rate influence heart rate changes. Key statistical methods, including hypothesis testing and model fitting, were used to understand these relationships.

## Dependencies
### To reproduce the analysis from the .Rmd file, the following R packages are required:
- rmarkdown 
- knitr

### To reproduce the analysis:
- ggplot2
- dplyr
- DT
- MASS
- nortest
- fitdistrplus
- goftest
- caret
- survival

## Installation
To clone the repository, use the following commands:  

git clone https://github.com/kirstynloftus/Heart-Rate-Analysis.git  

cd Heart-Rate-Analysis

To install these packages and any others needed, simply run the following in your R console:  

install.packages(c("rmarkdown", "knitr", "ggplot2", "dplyr", "DT", "MASS", "nortest", "fitdistrplus", "goftest", "caret", "survival"))

## Usage
To render the analysis, run the following command in R:  

rmarkdown::render("DoE project.Rmd")  

This will generate the HTML report with the full analysis.

You can also view the interactive HTML version of the project here:  
https://kirstynloftus.github.io/Heart-Rate-Analysis/DoE_project.html

## Shiny App
The interactive Shiny app allows users to explore heart rate changes by exercise type and incline rate. You can access it online or run it locally.

### Online Access
The Shiny app is available online at https://kirstynloftus.shinyapps.io/HeartRateAnalysisDashboard/
### Running the App Locally
To run the app on your local machine:
1. Clone the repository:
   ```bash
   git clone https://github.com/kirstynloftus/Heart-Rate-Analysis.git
   cd Heart-Rate-Analysis/DoE_App
2. Install the required R packages:

   install.packages(c("shiny", "ggplot2", "dplyr"))
3. Run the app:

   shiny::runApp("DoE_app/app.R")
   
This will open the Shiny app in your web browser locally.

## Contributing
Feel free to use the data provided for your own research questions or purposes. If you'd like to contribute to the analysis, you're welcome to add on to it, suggest improvements, or submit issues with feedback. When contributing, please make sure to follow these guidelines:

- Fork the repository, make your changes, and submit a pull request.
- Provide a clear explanation of the changes made or the analysis added.
- Be respectful of others' work and research.
  
## License
This project is licensed under the MIT License - see the LICENSE file for details.
