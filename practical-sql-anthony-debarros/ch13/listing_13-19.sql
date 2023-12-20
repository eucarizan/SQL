-- Listing 13-19: Generating the temperature readings crosstab
SELECT *
FROM crosstab('SELECT station_name,
	              date_part(''month'', observation_date),
		      percentile_cont(.5) WITHIN GROUP (ORDER BY max_temp)
	       FROM temperature_readings
	       GROUP BY station_name, date_part(''month'', observation_date)
	       ORDER BY station_name',

	      'SELECT month FROM generate_series(1,12) month')
AS (
	station text,
	jan numeric(3,0),
	feb numeric(3,0),
	mar numeric(3,0),
	apr numeric(3,0),
	may numeric(3,0),
	jun numeric(3,0),
	jul numeric(3,0),
	aug numeric(3,0),
	sep numeric(3,0),
	oct numeric(3,0),
	nov numeric(3,0),
	dec numeric(3,0));
