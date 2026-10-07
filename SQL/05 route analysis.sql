-- Route distance classification
SELECT
    CASE
        WHEN distance_km < 1500 THEN 'Short Haul'
        WHEN distance_km < 4000 THEN 'Medium Haul'
        ELSE 'Long Haul'
    END AS route_category,
    COUNT(*) AS total_routes,
    ROUND(AVG(distance_km), 2) AS average_distance_km
FROM routes
GROUP BY route_category
ORDER BY average_distance_km;


-- Domestic vs International routes
SELECT
    CASE
        WHEN src_country = dst_country THEN 'Domestic'
        ELSE 'International'
    END AS route_type,
    COUNT(*) AS total_routes
FROM routes
GROUP BY route_type;


-- Top 10 international country connections
SELECT
    src_country,
    dst_country,
    COUNT(*) AS number_of_routes
FROM routes
WHERE src_country <> dst_country
GROUP BY src_country, dst_country
ORDER BY number_of_routes DESC
LIMIT 10;