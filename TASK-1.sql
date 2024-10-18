
#TASK-1

with 
Branchsales as (select branch , sum(total) as total_sales 
from walmartsales group by branch )
select branch ,total_sales , lag(total_sales) over(order by total_sales) as prev_sales,
(total_sales-lag(total_sales) over(order by total_sales))/(lag(total_sales) over(order by total_sales)) * 100 as growth_rate 
from branchsales;



