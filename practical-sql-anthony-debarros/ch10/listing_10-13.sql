-- Listing 10-13: Creating and filling the company_standard column
ALTER TABLE meat_poultry_egg_establishments ADD COLUMN company_standard text;
UPDATE meat_poultry_egg_establishments
SET company_standard = company;
