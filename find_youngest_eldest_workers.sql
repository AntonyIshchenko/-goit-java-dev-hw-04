WITH
    all_worker AS (
        SELECT
            name,
            birthday
        FROM WORKER
    )

    , filtered_worker AS (
        SELECT
            'YOUNGEST' AS type,
            *
        FROM all_worker
        QUALIFY
            RANK() OVER (order by birthday DESC) = 1

        UNION ALL

        SELECT
            'ELDEST' as type,
            *
        FROM all_worker
        QUALIFY
            RANK() OVER (order by birthday ) = 1
    )
SELECT
    type,
    name,
    birthday
FROM filtered_worker
ORDER by
    name
