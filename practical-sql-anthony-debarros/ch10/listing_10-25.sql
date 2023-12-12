-- Listing 10-25: Backing up a table while adding and filling a new column
CREATE TABLE meat_poultry_egg_establishments_backup AS
SELECT *,
    '2023-02-14 00:00 EST'::timestamp with time zone AS reviewed_date
FROM meat_poultry_egg_establishments;
