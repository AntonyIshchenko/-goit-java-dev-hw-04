SELECT
    p.name,
    SUM(DATEDIFF(MONTH, p.start_date, p.end_date) * IFNULL(w.salary, 0)) AS price
FROM project AS p
LEFT JOIN project_worker AS pw
ON
    p.id = pw.project_id
LEFT JOIN worker AS w
ON
    pw.worker_id = w.id
GROUP BY
    p.name
ORDER BY
    price DESC,
    name