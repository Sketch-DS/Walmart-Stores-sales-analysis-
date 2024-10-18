#TASK-4

WITH AverageSales AS (SELECT  product_line, AVG(Total) AS Avg_Sales
 FROM walmartsales  GROUP BY product_line)
 
 #Identify anomalies in sales transactions

SELECT     
w.Customer_type,      
w.product_line,      
w.Total,     
 a.Avg_Sales,   
 CASE         
WHEN w.Total > (a.Avg_Sales * 2) THEN 'High Anomaly'          
WHEN w.Total < (a.Avg_Sales / 2) THEN 'Low Anomaly'
 ELSE 'Normal'    
END AS Anomaly_Status FROM walmartsales w JOIN
 AverageSales a ON w.product_line = a.product_line 
 WHERE w.Total > (a.Avg_Sales * 2) OR w.Total < (a.Avg_Sales / 2)  -- ORDER BY Anomaly_Status, w.Total DESC; -Filter for anomalies 

 -- Order by anomaly status and sales amount
