-- Listing 10-8: Backing up a table
CREATE TABLE meat_poultry_egg_establishments_backup AS
SELECT * From meat_poultry_egg_establishments;

-- Check number of records:
SELECT
    (SELECT count(*) FROM meat_poultry_egg_establishments) AS original,
    (SELECT count(*) FROM meat_poultry_egg_establishments) AS backup;
