-- Listing 7-8: Using FULL OUTER JOIN
SELECT * 
FROM district_2020 FULL OUTER JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;
