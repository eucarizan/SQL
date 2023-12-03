-- Listing 5-9: Exporting selected columns from a table with COPY

COPY us_counties_pop_est_2019 
    (county_name, internal_point_lat, internal_point_lon)
TO 'C:\YourDirectory\us_counties_latlon_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|'); 
