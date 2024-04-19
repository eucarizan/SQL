-- Listing 15-4: Using ST_GeogFromText() to create spatial objects

SELECT
ST_GeogFromText('SRID=4326;MULTIPOINT(-74.9 42.7, -75.1 42.7, -74.924 42.6)');
