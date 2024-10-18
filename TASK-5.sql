#TASK-5

SELECT city, payment,
 COUNT(*) AS transaction_count
 FROM walmartsales
GROUP BY city, payment 
HAVING    
COUNT(*) = (SELECT MAX(transaction_count)  
FROM (SELECT city, payment, COUNT(*) AS transaction_count
FROM walmartsales
GROUP BY city, payment) AS subquery
WHERE city = walmartsales.city)
ORDER BY city,transaction_count DESC; 
