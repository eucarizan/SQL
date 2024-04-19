-- Listing 15-9: Creating and indexing a geography column
-- There's also a function: https://postgis.net/docs/AddGeometryColumn.html

-- Add column
ALTER TABLE farmers_markets ADD COLUMN geog_point geography(POINT,4326);

-- Now fill that column with the lat/long
UPDATE farmers_markets
SET geog_point = 
     ST_SetSRID(
               ST_MakePoint(longitude,latitude)::geography,4326
               );

-- Add a spatial (R-Tree) index using GIST
CREATE INDEX market_pts_idx ON farmers_markets USING GIST (geog_point);

-- View the geography column
SELECT longitude,
       latitude,
       geog_point,
       ST_AsEWKT(geog_point)
FROM farmers_markets
WHERE longitude IS NOT NULL
LIMIT 5;
