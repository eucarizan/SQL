-- Listing 10-4: Using IS NULL to find missing values in the st column
SELECT establishment_number, company, city, st, zip
FROM meat_poultry_egg_establishments
WHERE st IS NULL;
