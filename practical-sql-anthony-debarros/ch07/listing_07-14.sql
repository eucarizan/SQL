-- Listing 7-14: Combining query results with UNION
SELECT * FROM district_2020
UNION
SELECT * FROM district_2035
ORDER BY id;
