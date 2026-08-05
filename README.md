Swiggy Restaurant & Pricing Analytics

Project Overview
This project is an end-to-end data analysis of the Swiggy Restaurant Dataset using SQL, Python (Pandas), and Power BI. The objective is to analyse restaurant distribution, pricing trends, customer ratings, and food categories to generate actionable business insights and present them through an interactive dashboard.

 Objectives
- Analyse restaurant distribution across cities and states.
- Identify the highest-priced food categories.
- Evaluate restaurant ratings and customer review trends.
- Discover top-rated restaurants.
- Build an interactive Power BI dashboard for business decision-making.

 Tools & Technologies
- SQL Server
- Python
- Pandas
- NumPy
- Matplotlib
- Power BI
- Git & GitHub

Dataset
The dataset contains information about restaurants listed on Swiggy, including:

- Restaurant Name
- Dish Name
- Category
- City
- State
- Price (INR)
- Rating
- Rating Count
- Location

 Project Workflow
 
 Data Cleaning (Python)

- Handled missing values
- Removed duplicate records
- Checked data types
- Performed data quality checks
- Prepared the dataset for analysis

Exploratory Data Analysis (Python)

- Price distribution analysis
- Rating distribution analysis
- Outlier detection
- Category analysis
- Restaurant distribution
- Summary statistics

SQL Analysis

Performed SQL queries to answer business questions such as:

- Total number of restaurants
- Average dish price
- Average restaurant rating
- Restaurant count by city
- Restaurant count by state
- Top-rated restaurants
- Highest-priced categories
- Rating analysis
- Category-wise pricing

Power BI Dashboard

The interactive dashboard includes:

- KPI Cards
  - Total Restaurants
  - Total Cities
  - Average Price
  - Average Rating
  - Average Review Count

- Interactive Slicers
  - State
  - Category

- Visualisations
  - Top Cities by Restaurant Count
  - Top 10 Categories by Average Price
  - Average Rating by City
  - Top 10 Highest Rated Restaurants

 Key Business Insights

Restaurant Distribution Across Cities
Business Question

Which cities have the largest restaurant presence on Swiggy?
![Restaurant Count](photo/Screenshot 2026-08-06 003405.png)


   
Analysis

The restaurant distribution shows that a few cities contribute a much larger number of restaurants than the others. Cities such as Jaipur and Bengaluru appear to have a much denser restaurant network, while several cities have comparatively fewer restaurants listed on the platform.

Insight

This pattern suggests that Swiggy's restaurant network is concentrated in a handful of major markets. Customers living in these cities have access to a wider variety of restaurants and cuisines, which can improve user satisfaction and order frequency. At the same time, cities with fewer restaurants may represent untapped markets where Swiggy could increase its presence by onboarding additional restaurant partners.

Business Recommendation

Instead of expanding uniformly across every city, Swiggy should identify cities where customer demand is increasing but restaurant availability remains limited. Expanding strategically into these markets could improve customer choice while facing less competition than already saturated cities.


 Repository Structure

Swiggy-Restaurant-Data-Analysis
│
├── Data
│   └── swiggy_data.csv
│
├── SQL
│   └── Swiggy_SQL_Analysis.sql
│
├── Python
│   └── Swiggy_EDA.ipynb
│
├── PowerBI
│   └── Swiggy_Dashboard.pbix
│
├── photo
│   └── Dashboard.png
│
└── README.md


 Skills Demonstrated

- SQL Querying
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Data Visualisation
- Dashboard Design
- Business Analysis
- Data Storytelling
- KPI Development


 Conclusion

This project demonstrates an end-to-end data analytics workflow, from data cleaning and SQL analysis to interactive dashboard development in Power BI. The insights generated can help understand restaurant distribution, pricing patterns, and customer satisfaction while supporting data-driven business decisions.


