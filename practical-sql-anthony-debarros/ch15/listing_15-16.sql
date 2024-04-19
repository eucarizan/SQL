-- Listing 15-16: Using ST_Within() to find the county belonging to a pair of coordinates

SELECT sh.name,
       c.state_name
FROM us_counties_2019_shp sh JOIN us_counties_pop_est_2019 c
    ON sh.statefp = c.state_fips AND sh.countyfp = c.county_fips
WHERE ST_Within(
         'SRID=4269;POINT(-118.3419063 34.0977076)'::geometry, geom
);
