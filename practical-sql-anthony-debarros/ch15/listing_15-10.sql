-- Listing 15-10: Using ST_DWithin() to locate farmers' markets within 10 kilometers of a point

SELECT market_name,
       city,
       st,
       geog_point
FROM farmers_markets
WHERE ST_DWithin(geog_point,
                 ST_GeogFromText('POINT(-93.6204386 41.5853202)'),
                 10000)
ORDER BY market_name;
