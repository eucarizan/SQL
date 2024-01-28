-- Listing 16-14: Finding the minimum and maximum earthquake times

SELECT min(to_timestamp(
           (earthquake #>> '{properties, time}')::bigint / 1000
                       )) AT TIME ZONE 'UTC' AS min_timestamp,
       max(to_timestamp(
           (earthquake #>> '{properties, time}')::bigint / 1000
                       )) AT TIME ZONE 'UTC' AS max_timestamp
FROM earthquakes;
