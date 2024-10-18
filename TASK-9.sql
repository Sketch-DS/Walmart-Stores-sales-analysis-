#TASK-9

select customer_id, 
customer_type,city,
sum(TOTAL) as Sales_volume 
from walmartsales 
group by Customer_ID ,customer_type,city 
order by sales_volume desc limit 5;
