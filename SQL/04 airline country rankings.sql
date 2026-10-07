WITH airline_routes AS (
SELECT
airline_country,
airline_name,
COUNT(*) AS number_of_routes
FROM routes
GROUP BY airline_country, airline_name
),

ranked_airlines AS (
SELECT
airline_country,
airline_name
number_of_routes,
RANK() OVER (
PARTITION BY airline_country
ORDER BY number_of_routes DESC
) AS country_rank
FROM airline_routes
)

SELECT *
FROM ranked_airlines
WHERE country_rank <=3;