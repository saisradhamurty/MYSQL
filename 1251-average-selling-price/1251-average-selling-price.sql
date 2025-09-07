# Write your MySQL query statement below
select p.product_id,ifnull(round((sum(p.price*u.units)/sum(u.units)),2),0) as 'average_price' from prices as p left join unitssold as u on 
p.product_id = u.product_id and u.purchase_date BETWEEN start_date AND end_date
 group by product_id order by average_price 