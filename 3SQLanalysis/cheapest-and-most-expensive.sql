-- cheapest wine --
SELECT 
	wine_name as 'Cheapest wine',
    price
FROM wines
WHERE price>0
ORDER BY price 
LIMIT 1;

-- most expensive wine --
SELECT 
	wine_name as 'Most expensive wine',
    price
FROM wines
ORDER BY price DESC
LIMIT 1;