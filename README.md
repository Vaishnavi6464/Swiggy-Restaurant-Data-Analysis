Swiggy Restaurant & Pricing Analytics

Project Overview
This project is an end-to-end data analysis of the Swiggy Restaurant Dataset using SQL, Python (Pandas), and Power BI. The objective is to analyse restaurant distribution, pricing trends, customer ratings, and food categories to generate actionable business insights and present them through an interactive dashboard.

 Objectives

- Analyze the distribution of restaurants across cities and states.
- Identify pricing patterns across restaurants and food categories.
- Evaluate customer satisfaction using ratings and review counts.
- Identify high-performing restaurants based on pricing and ratings.
- Discover regional trends and market opportunities.
- Develop an interactive dashboard to support data-driven business decisions.
- Provide actionable recommendations for restaurant growth, pricing, and customer engagement.

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

<img src="photo/Screenshot 2026-08-06 173615.png" width="600">

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

Which cities have the largest restaurant presence on Swiggy?

<img src="photo/Screenshot 2026-08-06 003405.png" width="400">
   
Analysis

Among the top 10 cities with the highest restaurant presence, 6 are metropolitan cities, indicating that Swiggy has a stronger restaurant network in major urban areas. These cities benefit from higher population density, greater customer demand, and a larger number of restaurant partners.

Insight

This pattern suggests that Swiggy's restaurant network is concentrated in a handful of major markets. Customers living in these cities have access to a wider variety of restaurants and cuisines, which can improve user satisfaction and order frequency. At the same time, cities with fewer restaurants may represent untapped markets where Swiggy could increase its presence by onboarding additional restaurant partners.

Business Recommendation

Swiggy should continue strengthening its presence in metropolitan cities while also expanding its restaurant partnerships in Tier-2 and Tier-3 cities. Increasing restaurant availability in emerging markets can attract new customers and support long-term growth.

Pricing Analysis

How does the average price differ across food categories? 

<img src="photo/Screenshot 2026-08-06 005919.png" width="400">

Analysis
The pricing analysis reveals noticeable differences between food categories. Premium meal combinations and party packs are priced much higher than snacks and individual dishes. This indicates that customers are willing to spend more on products designed for families or group dining.

Insight
Higher prices do not necessarily indicate overpricing. In many cases, customers perceive greater value in bundled meals because they offer convenience and larger portions. These premium categories therefore contribute more revenue per order, even if they account for fewer total orders.

Business Recommendation
Restaurants should continue developing premium meal bundles while also maintaining affordable options for price-sensitive customers. A balanced pricing strategy allows restaurants to attract a broader customer base without relying on a single price segment.

Customer Ratings

How reliable are customer ratings and review counts across restaurants?

<img src="photo/Screenshot 2026-08-06 011816.png" width="400">

<img src="photo/Screenshot 2026-08-06 011328.png" width="400">


Analysis

The analysis shows that while the average restaurant rating is above 3.5 (approximately 4.34), the average rating count is below 400. Additionally, a significant number of restaurants have zero customer ratings or reviews.

Insight

The high average rating indicates that customers who leave reviews are generally satisfied with their dining experience. However, the relatively low average review count and the large number of restaurants with no ratings suggest that many restaurants have limited customer feedback. This makes it difficult for customers to evaluate these restaurants and may reduce their visibility and credibility on the platform.

Business Recommendation

Encourage customers to rate and review their orders by offering small incentives such as loyalty points, discount coupons, or cashback rewards.
Increase the visibility of newly onboarded or unrated restaurants through promotional campaigns to help them receive their first customer reviews.
Highlight restaurants with consistently high ratings and a substantial number of reviews to build customer trust.
Provide restaurant partners with review analytics so they can identify areas for improvement and enhance customer satisfaction.

Most Expensive Restaurants

Which restaurants have the highest average dish prices on Swiggy?

<img src="photo/Screenshot 2026-08-06 013554.png" width="500">


Analysis

The analysis of restaurants with the highest average dish prices shows that these restaurants are fairly evenly distributed across different cities rather than being concentrated in a single location. This suggests that premium dining options are available in multiple markets.

Insight

The presence of expensive restaurants across various cities indicates that demand for premium dining is not limited to metropolitan areas. Customers in different regions are willing to pay for high-quality food and unique dining experiences, creating opportunities for premium restaurants beyond a few major cities.

Business Recommendation
Continue expanding premium restaurant partnerships across different cities to meet the growing demand for high-quality dining experiences.
Design city-specific marketing campaigns to promote premium restaurants based on local customer preferences.
Maintain a balanced portfolio of premium and affordable restaurants in each city to cater to diverse customer segments.
Analyze customer purchasing patterns in each city to identify where premium restaurant offerings can be further expanded.

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

The analysis revealed that restaurant availability is concentrated in major metropolitan cities, indicating stronger market presence and higher customer demand in urban regions. At the same time, premium-priced restaurants are distributed across multiple cities, suggesting that demand for high-quality dining experiences extends beyond metropolitan markets. Customer satisfaction is generally high, with an average rating above 4.0. However, the relatively low average review count and the large number of unrated restaurants highlight an opportunity to improve customer engagement and encourage more users to share feedback.

Next Steps

While this project provides valuable insights into Swiggy's restaurant ecosystem, additional analyses can further enhance business decision-making.

-Build a restaurant performance score by combining ratings, review counts, pricing, and menu variety into a single performance metric.
-Develop predictive machine learning models to forecast restaurant ratings, customer demand, or pricing trends.
-Integrate delivery metrics such as delivery time, cancellation rate, and order completion rate to evaluate operational performance.
-Analyze order-level data to identify the most popular dishes, cuisines, and customer purchasing patterns.
