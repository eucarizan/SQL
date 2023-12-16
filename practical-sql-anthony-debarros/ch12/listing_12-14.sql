-- Listing 12-14: Using justify_interval() to better format cumulative trip duration
SELECT
    segment,
    arrival - departure AS segment_duration,
    justify_interval(sum(arrival - departure) OVER (ORDER BY trip_id)) AS cume_duration
FROM train_rides;
