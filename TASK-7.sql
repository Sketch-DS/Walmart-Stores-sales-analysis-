#TASK-7

Select
customer_type, 
product_line, 
count(Product_line) as Good_line 
from walmartsales 
group by customer_type, product_line 
having 
count(Product_line)=(select max(good_line)
from (select customer_type, product_line, count(product_line) as Good_line 
from walmartsales 
group by customer_type, product_line) as sub 
where customer_type=walmartsales.customer_type); 
