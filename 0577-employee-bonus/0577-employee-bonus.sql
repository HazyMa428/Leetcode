# Write your MySQL query statement below


SELECT Employee.name, Bonus.bonus
FROM Employee
        LEFT JOIN
    Bonus on Employee.empId = Bonus.empId
WHERE bonus < 1000 or bonus is NUll