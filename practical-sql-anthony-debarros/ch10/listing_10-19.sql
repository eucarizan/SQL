-- Listing 10-19: Adding and updating an inspection_deadline column
ALTER TABLE meat_poultry_egg_establishments
ADD COLUMN inspection_deadline timestamp with time zone;

UPDATE meat_poultry_egg_establishments establishments
SET inspection_deadline = '2022-12-01 00:00 EST'
WHERE EXISTS (SELECT state_regions.region
	FROM state_regions
	WHERE establishments.st = state_regions.st AND state_regions.region = 'New England');
