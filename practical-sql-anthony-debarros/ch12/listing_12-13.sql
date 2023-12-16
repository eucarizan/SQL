-- Listing 12-13: Calculating cumulative intervals using OVER
SELECT
    segment,
    arrival - departure AS segment_duration,
    sum(arrival - departure) OVER (ORDER BY trip_id) AS cume_duration
FROM train_rides;
