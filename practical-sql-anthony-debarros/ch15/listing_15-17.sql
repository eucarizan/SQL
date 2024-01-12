-- Listing 15-17: Using ST_DWithin() to count people near Lincoln, Nebraska

SELECT sum(c.pop_est_2019) AS pop_est_2019
FROM us_counties_2019_shp sh JOIN us_counties_pop_est_2019 c
    ON sh.statefp = c.state_fips AND sh.countyfp = c.county_fips
WHERE ST_DWithin(sh.geom::geography, 
          ST_GeogFromText('SRID=4269;POINT(-96.699656 40.811567)'),
          80467);
