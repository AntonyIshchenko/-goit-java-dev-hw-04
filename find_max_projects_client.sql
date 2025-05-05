SELECT
    c.name AS name,
    COUNT(p.id) AS project_count
FROM project AS p
LEFT JOIN client AS c
ON
    p.client_id = c.id
GROUP BY
    name
QUALIFY
    RANK() OVER (ORDER BY project_count DESC ) = 1
ORDER BY
    name