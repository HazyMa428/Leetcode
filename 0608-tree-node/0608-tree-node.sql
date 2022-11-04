# Write your MySQL query statement below

SELECT id, 'Root' AS type
FROM Tree
WHERE p_id is NULL

UNION

SELECT id, 'Inner' AS type
FROM Tree
WHERE p_id is NOT NULL and id in (SELECT DISTINCT p_id FROM Tree WHERE p_id is NOT NULL)

UNION

SELECT id, 'Leaf' AS type
FROM Tree
WHERE p_id is NOT NULL and id NOT in (SELECT DISTINCT p_id FROM Tree WHERE p_id is NOT NULL)

ORDER BY id;