-- Listing 8-12: Importing New York City address data

CREATE TABLE new_york_addresses (
    longitude numeric(9,6),
    latitude numeric(9,6),
    street_number text,
    street text,
    unit text,
    postcode text,
    id integer CONSTRAINT new_york_key PRIMARY KEY
);

\copy new_york_addresses
FROM 'C:\Engg\sql\practical-sql-anthony-debarros\ch08\city_of_new_york.csv'
WITH (FORMAT CSV, HEADER);
