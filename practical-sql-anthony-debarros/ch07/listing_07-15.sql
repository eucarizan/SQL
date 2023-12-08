-- Listing 7-15: Combining query results with UNION ALL
SELECT * FROM district_2020
UNION ALL
SELECT * FROM district_2035
ORDER BY id;
