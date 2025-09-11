select customer_id from customer c,product p  group by customer_id having count(distinct c.product_key) = (select count(product_key) from product)
