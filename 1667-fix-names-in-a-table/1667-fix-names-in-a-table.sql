# Write your MySQL query statement below

SELECT Users.user_id, CONCAT (UPPER(SUBSTR(Users.name, 1, 1)), LOWER(SUBSTR(Users.name, 2))) AS NAME
FROM Users
ORDER BY user_id ASC