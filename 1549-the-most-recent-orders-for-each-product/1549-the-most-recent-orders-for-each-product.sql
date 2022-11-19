# Write your MySQL query statement below




select product_name, product_id, order_id, order_date
from (
    select product_name, p.product_id, order_id, order_date, rank() over(partition by product_name order by order_date desc) rnk
    from orders o
    join products p
    on o.product_id = p.product_id) temp
where rnk = 1
order by product_name, product_id, order_id;





