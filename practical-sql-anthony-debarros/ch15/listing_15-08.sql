-- Listing 15-8: Creating and loading the farmers_markets table

CREATE TABLE farmers_markets (
    fmid bigint PRIMARY KEY,
    market_name text NOT NULL,
    street text,
    city text,
    county text,
    st text NOT NULL,
    zip text,
    longitude numeric(10,7),
    latitude numeric(10,7),
    organic text NOT NULL
);

COPY farmers_markets
FROM 'C:\YourDirectory\farmers_markets.csv'
WITH (FORMAT CSV, HEADER);

SELECT count(*) FROM farmers_markets; -- should return 8,681 rows
