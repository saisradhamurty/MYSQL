select s.product_id,s.year as 'first_year',quantity,price from sales as s inner join 
(select product_id, min(year) as 'first_year' from sales group by product_id
) as t on s.product_id = t.product_id and s.year = t.first_year
