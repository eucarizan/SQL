-- Listing 16-18: Converting JSON location data to PostGIS geography
SELECT ST_SetSRID(
         ST_MakePoint(
            (earthquake #>> '{geometry, coordinates, 0}')::numeric,
            (earthquake #>> '{geometry, coordinates, 1}')::numeric
         ),
             4326)::geography AS earthquake_point
FROM earthquakes
ORDER BY id;
