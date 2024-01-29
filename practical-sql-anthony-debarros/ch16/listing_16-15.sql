-- Listing 16-15: Finding the five earthquakes with the largest magnitude

SELECT earthquake #>> '{properties, place}' AS place,
       to_timestamp((earthquake #>> '{properties, time}')::bigint / 1000)
           AT TIME ZONE 'UTC' AS time,
       (earthquake #>> '{properties, mag}')::numeric AS magnitude
FROM earthquakes
ORDER BY (earthquake #>> '{properties, mag}')::numeric DESC NULLS LAST
LIMIT 5;

-- Bonus: Instead of using a path extraction operator (#>>), you can also use field extraction:
SELECT earthquake -> 'properties' ->> 'place' AS place,
       to_timestamp((earthquake -> 'properties' ->> 'time')::bigint / 1000)
           AT TIME ZONE 'UTC' AS time,
       (earthquake #>> '{properties, mag}')::numeric AS magnitude
FROM earthquakes
ORDER BY (earthquake #>> '{properties, mag}')::numeric DESC NULLS LAST
LIMIT 5;
