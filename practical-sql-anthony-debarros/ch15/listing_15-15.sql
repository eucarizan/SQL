-- Listing 15-15: Finding the largest counties by area using ST_Area()

SELECT name,
       statefp AS st,
       round(
             ( ST_Area(geom::geography) / 2589988.110336 )::numeric, 2
            )  AS square_miles
FROM us_counties_2019_shp
ORDER BY square_miles DESC
LIMIT 5;
