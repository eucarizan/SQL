-- Listing 11-8: Creating and filling a table for census county business pattern data
CREATE TABLE cbp_naics_72_establishmetns (
	state_fips text,
	county_fips text,
	county text NOT NULL,
	st text NOT NULL,
	naics_2017 text NOT NULL,
	naics_2017_label text NOT NULL,
	year smallint NOT NULL,
	establishments integer NOT NULL,
	CONSTRAINT cbp_fips_key PRIMARY KEY (state_fips, county_fips)
);

COPY cbp_naics_72_establishments
FROM 'C:\YourDirectory\cbp_naics_72_establishments.csv'
WITH (FORMAT CSV, HEADER);

SELECT * 
FROM cbp_naics_72_establishments
ORDER BY state_fips, county_fips
LIMIT 5;
