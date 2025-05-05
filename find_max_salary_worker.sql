SELECT
    name,
    salary
FROM worker
QUALIFY
    RANK() OVER (ORDER BY salary DESC ) = 1
ORDER BY
    name