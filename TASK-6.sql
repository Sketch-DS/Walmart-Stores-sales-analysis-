#TASK-6

WITH MonthlySales AS (    
SELECT         
YEAR(STR_TO_DATE(date, '%d-%m-%Y')) AS Sale_Year,          MONTH(STR_TO_DATE(date, '%d-%m-%Y')) AS Sale_Month,          
Gender,          
SUM(Total) AS Total_Sales      
FROM walmartsales      
WHERE date IS NOT NULL  -- Ensure the date is not null    
GROUP BY YEAR(STR_TO_DATE(date, '%d-%m-%Y')), MONTH(STR_TO_DATE(date, '%d-%m-%Y')),
 Gender
-- Group by year, month, and gender
)
-- Step 2: Select and display the results
SELECT     
Sale_Year,  Sale_Month,Gender, Total_Sales
FROM MonthlySales ORDER BY Sale_Year, Sale_Month, Gender;  
-- Order by year, month, and gender
