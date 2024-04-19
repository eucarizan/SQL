-- Listing 15-12: Using ST_Distance() for each row in farmers_markets

SELECT market_name,
       city,
       round(
           (ST_Distance(geog_point,
                        ST_GeogFromText('POINT(-93.6204386 41.5853202)')
                        ) / 1609.344)::numeric, 2
            ) AS miles_from_dt
FROM farmers_markets
WHERE ST_DWithin(geog_point,
                 ST_GeogFromText('POINT(-93.6204386 41.5853202)'),
                 10000)
ORDER BY miles_from_dt ASC;
