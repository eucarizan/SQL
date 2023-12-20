-- Listing 13-18: 
CREATE TABLE temperature_readings (
	station_name text,
	observation_date date,
	max_temp integer,
	min_temp integer,
	CONSTRAINT temp_key PRIMARY KEY (station_name, observation_date)
);

COPY temperature_readings
FROM 'C:\YourDirectory\temperature_readings.csv'
WITH (FORMAT CSV, HEADER);
