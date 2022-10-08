# Write your MySQL query statement below
Select a.name as Employee
From Employee as a join Employee as b
on a.ManagerId = b.id
where a.salary > b.Salary
    
