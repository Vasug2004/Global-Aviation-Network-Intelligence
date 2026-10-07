WITH airport_routes AS (
    SELECT
        a.iso_country,
        a.name,
        a.iata_code,
        COUNT(*) AS number_of_routes
    FROM routes AS r
    INNER JOIN airports AS a
        ON r.src_iata = a.iata_code
    GROUP BY a.iso_country, a.name, a.iata_code
),
ranked_airports AS (
    SELECT
        iso_country,
        name,
        iata_code,
        number_of_routes,
        RANK() OVER (
            PARTITION BY iso_country
            ORDER BY number_of_routes DESC
        ) AS country_rank
    FROM airport_routes
)

SELECT *
FROM ranked_airports
WHERE country_rank <= 3;