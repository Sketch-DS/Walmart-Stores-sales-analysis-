#TASK-2

select 
branch,
 product_line,
sum(gross_income-cogs) as max_profit 
from walmartsales group by branch, product_line   
having sum(gross_income-cogs)=(select max(max_profit )    
from (select branch, product_line,sum(gross_income-cogs) as max_profit 
from walmartsales group by branch, product_line) as sub   
 where branch= walmartsales.branch ) order by Branch    ;
