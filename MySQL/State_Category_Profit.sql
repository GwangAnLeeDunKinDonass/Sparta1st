/*Profit By State & Category*/
select state,category,round(sum(profit),3) profit
from all_clean_product acp
group by state,Category
order by state, profit desc;

/*Max Value of Profit BY State & Category*/
with SCP as(
select state,category,round(sum(profit),3) profit
		from all_clean_product acp
		group by state,Category)
select a.state, b.category, a.profit
from (select state,max(profit) profit
	from SCP
	group by state) a inner join SCP b
	on a.profit = b.profit
order by state;