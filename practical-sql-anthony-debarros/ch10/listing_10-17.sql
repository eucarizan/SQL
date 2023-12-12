-- Listing 10-17: Modifying codes in the zip column missing one leading zero
UPDATE meat_poultry_egg_establishments
SET zip = '0' || zip
WHERE st IN('CT', 'MA', 'ME', 'NH', 'NJ', 'RI', 'VT') AND length(zip) = 4;
