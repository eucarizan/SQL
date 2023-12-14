-- Listing 11-1: Creating a 2014-2018 ACS 5-Year Estimates table and importing data
CREATE TABLE acs_2014_2018_stats (
	geoid text CONSTRAINT geoid_key PRIMARY KEY,
	county text NOT NULL,
	st text NOT NULL,
	pct_travel_60_min numeric(5,2),
	pct_bachelors_higher numeric(5,2),
	pct_masters_higher numeric(5,2),
	median_hh_income integer,
	CHECK (pct_masters_higher <= pct_bachelors_higher)
);

COPY acs_2014_2018_stats
FROM 'C:\YourDirectory\acs_2014_2018_stats.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM acs_2014_2018_stats;
