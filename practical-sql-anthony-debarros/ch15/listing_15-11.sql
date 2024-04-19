-- Listing 15-11: Using ST_Distance() to calculate the miles between Yankee Stadium
-- and Citi Field (Mets)
-- 1609.344 meters/mile

SELECT ST_Distance(
                   ST_GeogFromText('POINT(-73.9283685 40.8296466)'),
                   ST_GeogFromText('POINT(-73.8480153 40.7570917)')
                   ) / 1609.344 AS mets_to_yanks;
