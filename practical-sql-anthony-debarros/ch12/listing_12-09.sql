-- Listing 12-9: Exporting taxi pickups per hour to a CSV file
COPY 
    (SELECT 
	date_part('hour', tpep_pickup_datetime) AS trip_hour, 
	count(*) 
    FROM nyc_yellow_taxi_trips
    GROUP BY trip_hour
    ORDER BY trip_hour)
TO 'C:\YourDirectory\hourly_taxi_pickups.csv'
WITH (FORMAT CSV, HEADER);
