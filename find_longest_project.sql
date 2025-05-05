SELECT
    name,
    DATEDIFF(MONTH, start_date, end_date) as month_count
FROM project
QUALIFY
    RANK() OVER (ORDER BY month_count DESC ) = 1
ORDER BY
    name