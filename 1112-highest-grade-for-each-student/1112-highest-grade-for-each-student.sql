# Write your MySQL query statement below



with p as (select*, row_number() over(partition by student_id order by grade desc, course_id)as grader from enrollments)
select student_id, course_id, grade
from p 
where grader = 1;