-- Listing 15-14: Checking the geom column's well-known text representation

SELECT ST_AsText(geom)
FROM us_counties_2019_shp
ORDER BY gid
LIMIT 1;
