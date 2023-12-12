-- Listing 10-2: Finding multiple companies at the same address
SELECT company, street, city st, count(*) AS address_count
FROM meat_poultry_egg_establishments
GROUP BY company, street, city, st
HAVING count(*) > 1
ORDER BY company, street, city, st;
