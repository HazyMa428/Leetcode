# Write your MySQL query statement below
SELECT id, 'Root' AS type
FROM Tree
WHERE
    p_id is NULL

UNION

SELECT id, 'Leaf' AS Type
FROM Tree
WHERE
    id NOT IN (SELECT DISTINCT p_id
              FROM Tree
              WHERE p_id is NOT NULL)
              AND p_id is NOT NULL

UNION 

SELECT id, 'Inner' AS Type
FROM Tree
WHERE
    id in (SELECT DISTINCT 
           p_id
          FROM 
           Tree
          WHERE 
           p_id is NOT NULL)
           AND p_id is NOT NULL

ORDER BY id;