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
The interactive Shiny app allows users to visually explore heart rate changes by exercise type and incline rate. You can access it online or run it locally.

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

## Web App
The interactive web app allows users to explore heart rate changes by exercise type and incline rate. You can access it online.

### Online Access
The web app is available online at https://heart-rate-analysis-1.onrender.com/predict

### Local Access
To run the app locally, follow these steps:  
#### Prerequisites 
Make sure you have the following installed:  
- Python (version 3.6 or higher)
- pip (Python package manager)
- venv (optional, but recommended for isolating dependencies)
#### Steps to Run the App Locally  
1. Clone the repository
   - Start by cloning the repository to your local machine:
     ```bash
     git clone https://github.com/kirstynloftus/Heart-Rate-Analysis.git  
2. Navigate to the app folder
   - Change into the web_app folder (where the application files are located):
     ```bash
     cd Heart-Rate-Analysis/web_app
3. Set up a virtual environment (optional, but recommended)
   - Create and activate a virtual environment:
     ```bash
     python3 -m venv venv
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
   - On Windows:
     ```bash
     venv\Scripts\activate
4. Install the required dependencies
   - Install all the necessary Python dependencies from requirements.txt:
     ```bash
     pip install -r requirements.txt 
5. Run the app
   - Start the Flask application by running model.py:
     ```bash
     python model.py
   - This will start the Flask development server, and you should see output similar to this:
     ```bash
     * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
6. Access the app locally
   - Open your browser and navigate to the URL provided in step 5. This will load the Heart Rate Prediction form where you can enter the exercise type and incline rate, then click Predict to see the result.
 #### Troubleshooting  
 - Invalid input: If the form inputs are invalid or missing, the app will display an error message and prompt you to select valid inputs.
 - Environment issues: Ensure that you have the required Python version and dependencies installed. If you encounter issues with dependencies, make sure all the necessary packages are listed in requirements.txt and try reinstalling with pip install -r requirements.txt.
 


## Contributing
Feel free to use the data provided for your own research questions or purposes. If you'd like to contribute to the analysis, you're welcome to add on to it, suggest improvements, or submit issues with feedback. When contributing, please make sure to follow these guidelines:

- Fork the repository, make your changes, and submit a pull request.
- Provide a clear explanation of the changes made or the analysis added.
- Be respectful of others' work and research.
  
## License
This project is licensed under the MIT License - see the LICENSE file for details.
