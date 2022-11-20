# Write your MySQL query statement below


with top_sal as (
select d.Name as Department , e.name as Employee , e.salary as Salary , rank() over (partition by departmentid order by salary desc) top
from employee e, department d
where e. departmentid = d.id)
select Department as "Department", Employee as "Employee", Salary as "Salary" from top_sal
where top = 1
order by 1 desc