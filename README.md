# STAT-315-Final Team 1

## Description
For our final project, we plan to use a heart disease dataset from Kaggle to build a model that will predict whether someone is at risk of heart disease based on different health variables. The dataset includes variables such as age, sex, chest pain type, resting blood pressure, cholesterol, fasting blood sugar, EKG results, max heart rate, exercise-induced angina, and ST depression. The main goal of this model is to figure out which of these variables are most important in predicting whether someone will get heart disease and to see the effectiveness of different machine learning models at identifying high-risk patients. This will be beneficial in understanding key health metrics to help identify the risk of heart disease

## How to build and run the Project
1. Install Docker on your computer (https://www.docker.com/)
2. Clone the repository to your local computer
3. Open up the terminal and build the Docker image. Run this command: docker build -t finalproj:0.0.1 .
4. Run the Docker container with this command: docker run -v {ENTER YOUR FILE PATH TO THE REPOSITORY}:/home -p 8888:8888 --name projcont finalproj:0.0.1
5. Open the Jupyter notebook and run the report!
