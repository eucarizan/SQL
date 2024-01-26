-- Listing 16-12: Retrieving the earthquake time
-- Note that the time is stored in epoch format

SELECT id, earthquake #>> '{properties, time}' AS time 
FROM earthquakes
ORDER BY id LIMIT 5;
