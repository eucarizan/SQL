-- Listing 10-16: Modifying codes in the zip column missing two leading zeros
UPDATE meat_poultry_egg_establishments
SET zip = '00' || zip
WHERE st IN('PR', 'VI') AND length(zip) = 3;
