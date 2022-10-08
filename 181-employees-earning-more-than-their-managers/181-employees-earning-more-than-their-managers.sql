# Write your MySQL query statement below
Select a.name as Employee
From Employee as a,
        Employee as b
Where a.ManagerId = b.id
        and a.salary > b.Salary
    
