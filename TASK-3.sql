#TASK-3

create view Ab 
as select customer_id 
,sum(total) as Total_amount 
from walmartsales 
group by customer_id
 order by customer_id;
select* ,
Case 
when Total_amount < 21000 then 'Low'
when Total_amount<23000 then 'Medium'
else 'High'
end as type
from Ab;
