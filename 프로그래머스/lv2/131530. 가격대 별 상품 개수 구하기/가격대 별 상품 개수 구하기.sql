SELECT TRUNCATE(price,-4) as price_group, COUNT(product_id) AS products
FROM product 
GROUP BY price_group 
ORDER BY price_group;