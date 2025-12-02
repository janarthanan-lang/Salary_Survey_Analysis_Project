# 📌 Salary Survey Data Analysis – Excel & SQL Project

- This project analyzes a Salary Survey dataset using Excel for data cleaning and MySQL for data analysis. The goal is to understand global salary trends across industries, job roles, education levels, genders, and countries while generating insights that can help with workforce planning and compensation benchmarking.

## ⭐ Project Overview

- This project involves cleaning, standardizing, and analyzing a salary dataset to derive meaningful insights. Excel (Power Query + formulas) is used to clean and transform raw data, and MySQL is used to perform advanced data analysis through SQL queries.

## 🎯 Project Goals

- To clean and standardize raw salary survey data for accurate analysis.

- To analyze salary variations across demographic and professional categories.

- To deliver meaningful insights that support compensation analysis and decision-making.

## 🛠 Technologies Used

- Microsoft Excel (Power Query, Formulas, Charts)

- MySQL (SQL Queries, Aggregation, Joins, Window Functions)

- Power BI / Excel Dashboard (for data visualization)

## 🧹 Data Cleaning Steps (Excel)

- Removed duplicates and irrelevant rows

- Handled missing values (mean for numeric, “Unknown” for text)

- Applied TRIM & PROPER formatting

- Converted multiple currencies into USD

- Removed outliers using IQR method

- Standardized column names for SQL compatibility

## 📊 Dashboard Insights

- IT and Manufacturing industries offer the highest average salaries.

- US, Singapore, and Netherlands show the highest compensation across countries.

- Gender-wise salary differences are minimal, indicating fair pay distribution.

- Bachelor’s and Diploma holders earn comparatively higher average salaries.

- Average experience (9.1 years) indicates a mid-level workforce dominating the dataset.

## 🧾 Key SQL Queries Executed

- Average Salary by Industry & Gender

- Total Compensation by Job Title

- Salary Distribution by Education Level

- Median Salary by Age Range & Gender

- Highest Paid Job Titles by Country

- Salary Comparison by Industry & Gender

- Percentage of Workforce with Additional Compensation

- Full SQL queries included in /SQL_queries.sql (if you add this file)
```
📁 Project Structure
├── data
│   ├── Salary_Survey_Uncleaned.xlsx
│   ├── Salary_Survey_Cleaned.xlsx
├── visuals
│   ├── Dashboard.png
│   ├── Charts
├── sql
│   ├── analysis_queries.sql
├── README.md
```
## 📌 Conclusion

- Salary levels vary significantly by industry, country, and education level.

- IT and Manufacturing show top compensation trends globally.

- Gender pay gaps are minimal in this dataset.

- Cleaned data supports reliable and clear salary insights.

## 📌 Recommendations

- Improve salary standards in low-paying industries to remain competitive.

- Focus on skill-based hiring, as Bachelor's and Diploma holders earn strong salaries.

- Conduct regular pay equity checks to ensure fairness across genders.

- Use salary insights for strategic workforce planning and budgeting.

## 🚀 Future Enhancements

- Build interactive dashboards using Power BI/Tableau

- Add machine learning models for salary prediction

- Automate data cleaning using Python

- Integrate API-based live currency conversions

## 👨‍💻 Author

- Jana
- Data Analyst | SQL | Excel | Power BI
