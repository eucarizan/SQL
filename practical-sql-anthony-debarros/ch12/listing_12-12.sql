-- Listing 12-12: Calculating the length of each trip segment
SELECT 
    segment, 
    to_char(departure, 'YYYY-MM-DD HH12:MI a.m. TZ') AS departure,
    arrival - departure AS segment_duration
FROM train_rides;
