-- Listing 16-19: Converting JSON coordinates to a PostGIS geometry column 

-- Add a column of the geography data type 
ALTER TABLE earthquakes ADD COLUMN earthquake_point geography(POINT, 4326);

-- Update the earthquakes table with a Point
UPDATE earthquakes
SET earthquake_point = 
        ST_SetSRID(
            ST_MakePoint(
                (earthquake #>> '{geometry, coordinates, 0}')::numeric,
                (earthquake #>> '{geometry, coordinates, 1}')::numeric
             ),
                 4326)::geography;

CREATE INDEX quake_pt_idx ON earthquakes USING GIST (earthquake_point);
