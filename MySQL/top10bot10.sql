/*Extract the purchase category
 * for each of the upper and lower 10 regions
 * according to the profit*/
SELECT *
from (SELECT State, City, Category, Sub_Category, SUM(Profit) pf
	FROM all_clean_product
	GROUP BY State, City, Category, Sub_Category
	ORDER BY pf
	LIMIT 10) as A
	union
	(SELECT State, City, Category, Sub_Category, SUM(Profit) pf
	FROM all_clean_product
	GROUP BY State, City, Category, Sub_Category
	ORDER BY pf DESC
	LIMIT 10)
order by PF