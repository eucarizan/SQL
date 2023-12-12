-- Listing 10-11: Updating the st column for three establishments
UPDATE meat_poultry_egg_establishments
SET st = 'MN' where establishment_number = 'V18677A';

UPDATE meat_poultry_egg_establishments
SET st = 'AL' where establishment_number = 'M45319+P45319';

UPDATE meat_poultry_egg_establishments 
SET st = 'WI' where establishment_number = 'M263A+P263A+V263A'
RETURNING establishment_number, company, city, st, zip;
