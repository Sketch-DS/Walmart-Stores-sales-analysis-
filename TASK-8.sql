#TASK-8

select 
Customer_type, 
count(Customer_type) AS CUST_COUNT
from walmartsales 
where date between '01-01-2019' and '31-01-2019' group by customer_type 
order by count(Customer_type);

