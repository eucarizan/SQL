-- Listing 10-9: Creating and filling the st_cpy column with ALTER TABLE and UPDATE
ALTER TABLE meat_poultry_egg_establishments ADD COLUMN st_copy text;

UPDATE meat_poultry_egg_establishments SET st_copy = st;
