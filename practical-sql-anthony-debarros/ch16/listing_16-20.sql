-- Listing 16-20: Finding earthquakes within 50 miles of downtown Tulsa, Oklahoma

SELECT earthquake #>> '{properties, place}' AS place,
       to_timestamp((earthquake -> 'properties' ->> 'time')::bigint / 1000)
           AT TIME ZONE 'UTC' AS time,
       (earthquake #>> '{properties, mag}')::numeric AS magnitude,
       earthquake_point
FROM earthquakes
WHERE ST_DWithin(earthquake_point,
                 ST_GeogFromText('POINT(-95.989505 36.155007)'),
                 80468)
ORDER BY time;
