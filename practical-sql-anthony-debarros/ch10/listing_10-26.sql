-- Listing 10-26: Swapping table names using ALTER TABLE
ALTER TABLE meat_poultry_egg_establishments
    RENAME TO meat_poultry_egg_establishments_temp;
ALTER TABLE meat_poultry_egg_establishments_backup
    RENAME TO meat_poultry_egg_establishments;
ALTER TABLE meat_poultry_egg_establishments_temp
    RENAME TO meat_poultry_egg_establishments_backup;
