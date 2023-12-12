-- Listing 10-1: Importing the FSIS Meat, Poultry, and Egg Inspection Directory
CREATE TABLE meat_poultry_egg_establishments (
	establishment_number text CONSTRAINT est_number_key PRIMARY KEY,
	company text,
	street text,
	city text,
	st text,
	zip text,
	phone text,
	grant_date date,
	activities text,
	dbas text
);

COPY meat_poultry_egg_establishments
FROM 'C:\YourDirectory\MPI_Directory_by_Establishment_Name.csv'
WITH (FORMAT CSV, HEADER);

CREATE INDEX company_idx ON meat_poultry_egg_establishments (company);
