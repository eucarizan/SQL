-- Listing 7-17: Combining query results with INTERSECT and EXCEPT
SELECT * FROM district_2020 
INTERSECT
SELECT * FROM district_2035
ORDER BY id;

SELECT * FROM district_2020
EXCEPT
SELECT * FROM district_2035
ORDER BY id;
