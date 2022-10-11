# Write your MySQL query statement below
Select
    Ifnull(
    (select distinct salary
    from employee
     order by salary desc
    limit 1 offset 1), null) as SecondHighestSalary