-- Listing 7-5: JOIN with USING
SELECT *
FROM district_2020 JOIN district_2035 USING (id)
ORDER BY district_2020.id;
