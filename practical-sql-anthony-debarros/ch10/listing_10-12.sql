-- Listing 10-12: Restoring original st column values

-- Restoring from the column backup
UPDATE meat_poultry_egg_establishments
SET st = st_copy;

-- Restoring from the table backup
UPDATE meat_poultry_egg_establishments original
SET st = backup.st
FROM meat_poultry_egg_establishments_backup backup
WHERE original.establishment_number = backup.establishment_number;
