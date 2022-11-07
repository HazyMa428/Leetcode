# Write your MySQL query statement below
select s.name
from SalesPerson s
where s.sales_id Not in(
        select o.sales_id
        from orders o
        left join company c
        on c.com_id = o.com_id
        where c.name = 'RED')