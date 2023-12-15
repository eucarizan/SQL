-- Listing 12-8: Counting taxi trips by hour
SELECT date_part('hour', tpep_pickup_datetime) AS trip_hour, count(*)
FROM nyc_yellow_taxi_trips
GROUP BY trip_hour
ORDER BY trip_hour;
