SELECT
    airline_name,
    COUNT(*) AS number_of_routes,
    COUNT(DISTINCT dst_iata) AS airports_served,
    COUNT(DISTINCT dst_country) AS countries_served
FROM routes
WHERE airline_name IS NOT NULL
GROUP BY airline_name
ORDER BY countries_served DESC;