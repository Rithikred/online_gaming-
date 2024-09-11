# online_gaming-
EDA on online gaming 


# Repository Structure 

# Project overview 
This project focuses on analyzing player behavior and monetization data using SQL. The objective is to create and manage a relational database schema and perform complex queries to derive actionable insights for optimizing player engagement and monetization strategies in online gaming.


# Dataset 
Im using a kaggle dataset named 🎮 Predict Online Gaming Behavior Dataset by
[ -d rabieelkharoua/predict-online-gaming-behavior-dataset
](https://www.kaggle.com/datasets/rabieelkharoua/predict-online-gaming-behavior-dataset?resource=download)


 ### Prerequisties 
 - SQL Database (e.g., PostgreSQL, MySQL)
- SQL client or tool (e.g., pgAdmin, MySQL Workbench)


## Data cleaning (cleaning dataset is the most important part of the job)
* First I've downloaded raw data from kaggle and opened using Excel to clean data.
* Made sure Date and other numericals are right format before  loading onto SQL client.
* Check for null values, either delete them or fill them based on importance of the column.
* check for duplicate rows, delete duplicate rows make it easier to work on data and vizualization for further analysis.
  ![image](https://github.com/user-attachments/assets/44760a35-e8aa-408e-8a0c-905d30a6e221)


## Data loading 
* We are going to import data into postgreSQL the data import query is like this and make sure to use only small letters.
  
![image](https://github.com/user-attachments/assets/76d102dd-4922-46f4-94c4-1d179f541e20)


* This will succesfully import our dataset into our database and we start querying.


## EDA 
first basic thing i observed, what kind of genre people like spend time a lot. Below are the results.

![image](https://github.com/user-attachments/assets/1d0ff15e-0462-4576-ba38-e25281261923)

##

what is the age group that spends the most time on the video game.

![image](https://github.com/user-attachments/assets/d270528f-9765-4d85-b1b7-f51f9cab6a6b)

## 

We aim to identify the optimal location and genre for investment by focusing on regions where residents exhibit a high propensity for engaging with specific types of games. Our analysis includes data on total purchases and total playtime in these locations, allowing us to pinpoint areas where people frequently make in-game purchases. By targeting these high-engagement regions, we can strategically invest in genres that are most likely to generate significant revenue.


![image](https://github.com/user-attachments/assets/1b74da07-7978-49e1-94fd-e2181b1c6b5f)



# Player Engagement Analysis

This repository contains SQL queries designed to analyze player engagement based on custom-defined segments for age and playtime. The goal is to evaluate how engagement rates vary across different age brackets and playtime segments using our own standards.

## SQL Query Description

The provided SQL query categorizes players into different segments based on their age and playtime and calculates the engagement rate for each segment. The engagement rate is specifically measured for high engagement levels.

### Query Breakdown

1. **Segmentation:**
   - **Age Brackets:**
     - 'Young' for players under 25 years.
     - 'Middle-aged' for players between 25 and 40 years.
     - 'Senior' for players over 40 years.
   - **Playtime Segments:**
     - 'Light' for playtime less than 10 hours.
     - 'Moderate' for playtime between 10 and 20 hours.
     - 'Heavy' for playtime exceeding 20 hours.

2. **High Engagement Rate Calculation:**
   - The engagement rate is calculated based on whether a player has a high engagement level ('High'). 
   - The query computes the average engagement rate for each combination of age and playtime segments.


##

![image](https://github.com/user-attachments/assets/50ddf369-09bf-450a-8c29-4d212cde82d1)

##









  


 

