# -NorthWind-Traders-SQL-Data-Analysis-

##🚀 Project Overview
This project analyzes the Northwind Traders dataset — a classic sample database representing a fictional company that imports and exports specialty foods around the world.
Using SQL Server Management Studio (SSMS), I explored key business metrics such as sales performance, customer behavior, employee productivity, and product trends.
The goal is to demonstrate how a data analyst can extract insights from raw data and turn them into data-driven business decisions.

##🎯 Objectives
Understand sales performance across products, regions, and time.
Identify top customers and employees contributing to revenue.
Analyze product profitability and category trends.
Showcase SQL analytical capabilities: joins, CTEs, subqueries, and window functions.

##🗂️ Dataset:https://www.kaggle.com/code/matthuan/northwind-eda-multiple-tables
Database: SQL Server (imported via SSMS)
Tables Used:
Customers
Orders
Employees
Products
OrderDetails
Categories
Shippers
Suppliers

##🏗️ Schema :
Customers ─┬── Orders ─── OrderDetails ─── Products ─── Suppliers
            └── Employees
            └── Shippers

##💡 Key Business Questions & Insights
-It contains data from 1996 to 1998 and includes details about customers, employees, products, and orders.
-From the data, I found that there are 9 product categories, which means the company sells a wide range of items.
-There are 77 products in total.
-Northwind has 93 customers, showing a strong customer base.
-There are 9 employees recorded in the data, who handle sales and customer orders.
-The company received 830 total orders during this 3-year period. This shows consistent business activity.
-Overall, this gives a good overview of how the company operated between 1996 and 1998.
-In the next part of my project, I’ll go deeper into the data using SQL queries to find insights like top-selling products, best customers, and sales trends over time.
-From the analysis, sales showed strong growth in 1997, contributing nearly 49% of total revenue, compared to only 17% in 1996. However, in 1998, there was a noticeable dip to around 35%.
This indicates that 1997 was a peak performance year, possibly due to business expansion or higher customer demand, while 1998 saw some slowdown, suggesting the need to investigate underlying causes like market conditions or sales strategy changes.
-Our top customer, Horst Kloss, contributed the highest revenue at about $117K, closely followed by Jose Pavarotti and Roland Mendel. Together, these three customers account for nearly three-fourths of the top five’s total revenue.There’s a significant gap between the top three and the remaining two, suggesting our sales are heavily concentrated among a small group. This presents both an opportunity to strengthen these key relationships and a risk if any of them reduce their purchases.
-From the analysis, Camembert Pierrot and Raclette Courdavault stand out as strong performers, ranking among the top 10 in both quantity and revenue.
Products like Côte de Blaye and Thüringer Rostbratwurst deliver high revenue but low sales volume, suggesting premium pricing.
Conversely, items such as Gorgonzola Telino and Guaraná Fantástica sell well in quantity but generate lower revenue, indicating potential for price or margin optimization.
This data highlights the importance of balancing product mix between volume drivers and profit leaders
-Most of the company’s revenue comes from the USA and Germany.
Austria, Brazil, and France also perform well, but many other countries have smaller contributions.
Focusing on strong regions while developing weaker ones can help balance global sales.

🏁 Final Thoughts
This project demonstrates the end-to-end analytical workflow of a data analyst — from querying data to communicating insights effectively.
It’s ideal for recruiters or hiring managers to assess:
SQL proficiency
Business understanding
Analytical storytelling


🔗 Connect with Me
If you’d like to discuss this project or collaborate, feel free to reach out:
📧 [sakshibudhrani31@gmail.com]
💼 [https://www.linkedin.com/in/sakshi-budhrani-015010359/]











