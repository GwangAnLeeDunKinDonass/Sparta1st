select Customer_ID, month(Order_Date) month,
	group_concat(Distinct `Sub-Category`) sold_product
from all_clean_product acp
group by Customer_ID, month(Order_Date)
order by Customer_ID , month 