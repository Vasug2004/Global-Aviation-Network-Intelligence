WITH departures AS (
    SELECT
        src_iata,
        COUNT(*) AS departing_routes
    FROM routes
    WHERE src_iata IS NOT NULL
    GROUP BY src_iata
),
arrivals AS (
    SELECT
        dst_iata,
        COUNT(*) AS arriving_routes
    FROM routes
    WHERE dst_iata IS NOT NULL
    GROUP BY dst_iata
),
airport_connectivity AS (
    SELECT
        d.src_iata AS iata_code,
        d.departing_routes,
        a.arriving_routes,
        d.departing_routes + a.arriving_routes AS total_connectivity
    FROM departures AS d
    INNER JOIN arrivals AS a
        ON d.src_iata = a.dst_iata
)
SELECT
    RANK() OVER (
        ORDER BY ac.total_connectivity DESC
    ) AS hub_rank,
    ap.name AS airport_name,
    ac.iata_code,
    ap.iso_country,
    ac.departing_routes,
    ac.arriving_routes,
    ac.total_connectivity
FROM airport_connectivity AS ac
INNER JOIN airports AS ap
    ON ac.iata_code = ap.iata_code
ORDER BY ac.total_connectivity DESC;