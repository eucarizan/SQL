-- Listing 10-18: Creating and filling a state_regions table
CREATE TABLE state_regions (
	st text CONSTRAINT st_key PRIMARY KEY,
	region text NOT NULL
);

COPY state_regions
FROM 'C:\YourDirectory\state_regions.csv'
WITH (FORMAT CSV, HEADER);
