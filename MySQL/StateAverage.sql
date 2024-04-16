/*Aveage Profit By State*/
select State, avg(profit) state_average
from all_clean_product acp
group by State
order by state_average