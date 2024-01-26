-- Listing 16-13: Converting the time value to a timestamp

SELECT id, earthquake #>> '{properties, time}' as time,
       to_timestamp(
           (earthquake #>> '{properties, time}')::bigint / 1000
                   ) AS time_formatted
FROM earthquakes
ORDER BY id LIMIT 5;

-- See and set time zone if desired
SHOW timezone;
SET timezone TO 'US/Eastern';
SET timezone TO 'UTC';
