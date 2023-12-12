-- Listing 10-7: Filtering with length() to find short zip values
SELECT st, count(*) AS st_count
FROM meat_poultry_egg_establishments
WHERE length(zip) < 5
GROUP BY st
ORDER BY st ASC;
