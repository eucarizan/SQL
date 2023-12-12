-- Listing 10-21: Deleting rows matching an expression
DELETE FROM meat_poultry_egg_establishments
WHERE st IN('AS', 'GU', 'MP', 'PR', 'VI');
