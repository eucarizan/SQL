-- Listing 15-18: Displaying counties near Lincoln, Nebraska

SELECT sh.name,
       c.state_name,
       c.pop_est_2019,
       ST_Transform(sh.geom, 4326) AS geom
FROM us_counties_2019_shp sh JOIN us_counties_pop_est_2019 c
    ON sh.statefp = c.state_fips AND sh.countyfp = c.county_fips
WHERE ST_DWithin(sh.geom::geography, 
          ST_GeogFromText('SRID=4269;POINT(-96.699656 40.811567)'),
          80467);
