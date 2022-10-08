# Write your MySQL query statement below
Select 
    b.Name AS 'Employee'
From
    Employee as a,
    Employee as b
Where
    a.ID = b.ManagerId
        and a.salary < b.salary
;
    
