create database project;
Select * from salary_survey_cleaned;


/*1. Average Salary by Industry and Gender 
Compare the average salary within each industry, split by gender. This helps 
identify potential salary discrepancies based on gender within industries. */

select industry,Gender,round(avg(salary_usd),2) AS Average_Salary
from salary_survey_cleaned
group by Industry,gender 
order by Industry,gender ;



/*2. Total Salary Compensation by Job Title 
Find the total monetary compensation (base salary + additional monetary 
compensation) for each job title. This can show which roles have the highest 
overall compensation. */

SELECT 
    `Job Title`,
    sum(`Annual Salary` + `Additional Monetary Compensation`) AS total_salary
FROM salary_survey_cleaned
GROUP BY `Job Title`
ORDER BY total_salary DESC;




/*3. Salary Distribution by Education Level 
Find the salary distribution (average salary, minimum, and maximum) for 
different education levels. This helps analyze the correlation between education 
and salary.*/

select 
`Highest Level of Education Completed` as Education_level,
round(avg(salary_usd),2) as average_salary,
round(min(salary_usd),2) as minimum_salary,
round(max(salary_usd),2) as maximum_salary
from salary_survey_cleaned
group by Education_level;


/* 4. Number of Employees by Industry and Years of Experience 
Determine how many employees are in each industry, broken down by years of 
professional experience. This can show if certain industries employ more 
experienced professionals. */

SELECT 
    Industry,
    `Years of Professional Experience Overall` AS Experience_Years,
    COUNT(*) AS Employee_Count
FROM salary_survey_cleaned
GROUP BY Industry, `Years of Professional Experience Overall`
ORDER BY Industry, Experience_Years;



/* 5. Median Salary by Age Range and Gender 
Calculate the median salary within different age ranges and genders. This can 
provide insights into salary trends across different age groups and gender. */

SELECT 
    `Age Range`,
    Gender,
    AVG(middle_salaries.Salary_USD) AS median_salary
FROM (
    SELECT 
        `Age Range`,
        Gender,
        Salary_USD,
        ROW_NUMBER() OVER (PARTITION BY `Age Range`, Gender ORDER BY Salary_USD) AS row_num,
        COUNT(*) OVER (PARTITION BY `Age Range`, Gender) AS total_count
    FROM salary_survey_cleaned
) AS middle_salaries
WHERE 
    row_num IN ((total_count + 1) DIV 2, (total_count + 2) DIV 2)
GROUP BY `Age Range`, Gender
ORDER BY `Age Range`;

/*6. Job Titles with the Highest Salary in Each Country 
Find the highest-paying job titles in each country. This can help understand salary 
trends across different countries and highlight high-paying positions. */

select Country,`Job Title`,Salary_USD from salary_survey_cleaned where Salary_USD in 
(select max(Salary_USD) from salary_survey_cleaned group by Country);


/* 7. Average Salary by City and Industry 
Calculate the average salary for each combination of city and industry. This shows 
which cities offer higher salaries within each industry. */

select city,industry,
avg(salary_usd) as Average_salary
from salary_survey_cleaned 
group by city,industry;


/*8. Percentage of Employees with Additional Monetary Compensation by Gender 
Find the percentage of employees within each gender who receive additional 
monetary compensation, such as bonuses or stock options. */

select gender,round(count(`Additional Monetary Compensation`)*100/
(select count(*) from salary_survey_cleaned),2) as percentage
from salary_survey_cleaned
group by gender
order by percentage;


/*9. Total Compensation by Job Title and Years of Experience 
o Determine the total compensation (salary + additional compensation) for each job 
title based on years of professional experience. This can help highlight 
compensation trends based on experience levels within specific job titles. */

select `Job Title`,
`Years of Professional Experience in Field` as Experience,
round(sum(salary_usd),2) as total_salary
from salary_survey_cleaned
group by `Job Title`,experience;



/*10. Average Salary by Industry, Gender, and Education Level 
o Understand how salary varies by industry, gender, and education level. This query 
can provide a comprehensive view of how multiple factors influence salary.*/

select industry,
gender,
`Highest Level of Education Completed` as Education_level,
round(avg(salary_usd),2) as Average_Salary
from salary_survey_cleaned
group by Industry,gender,Education_level;

select Name,`Job Title`,Country,Salary_USD 
from salary_survey_cleaned order by Salary_USD desc limit 1 offset 2;