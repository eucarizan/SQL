-- Listing 10-14: Using an UPDATE statement to modify column values that match a string
UPDATE meat_poultry_egg_establishments
SET company_standard = 'Armour-Eckrich Meats'
WHERE company LIKE 'Armour%'
RETURNING company, company_standard;
