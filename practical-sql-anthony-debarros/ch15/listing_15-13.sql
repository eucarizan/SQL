-- Listing 15-13: Using the <-> distance operator for a nearest neighbors search

SELECT market_name,
       city,
       st,
       round(
           (ST_Distance(geog_point,
                        ST_GeogFromText('POINT(-68.2041607 44.3876414)')
                        ) / 1609.344)::numeric, 2
            ) AS miles_from_bh
FROM farmers_markets
ORDER BY geog_point <-> ST_GeogFromText('POINT(-68.2041607 44.3876414)')
LIMIT 3;
