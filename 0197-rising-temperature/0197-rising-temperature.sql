# Write your MySQL query statement below
select Weather.id
from Weather
join Weather w
on DATEDIFF(Weather.recordDate, w.recordDate) = 1
AND Weather.temperature > w.temperature