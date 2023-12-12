-- Listing 10-10: Checking values in the st and st_copy column
SELECT st, st_copy
FROM meat_poultry_egg_establishments
WHERE st IS DISTINCT FROM st_copy
ORDER BY st;
