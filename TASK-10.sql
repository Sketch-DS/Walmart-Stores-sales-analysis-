#TASK-10


select 
dayname(str_to_date(date, "%d-%m-%y"))
 as Day_of_week,
sum(total) as total_sales 
from walmartsales
group by Day_of_week
order by field(Day_of_week,"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday");
