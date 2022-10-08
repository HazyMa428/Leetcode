# Write your MySQL query statement below
Select 
    a.Name AS 'Employee'
From
    Employee as a,
    Employee as b
Where
    a.ManagerId = b.Id
        and a.salary > b.salary
;
    
