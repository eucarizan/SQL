-- Listing 16-25: Adding a top-level key/value pair via concatenation
-- Two examples

UPDATE films
SET film = film || '{"studio": "Pixar"}'::jsonb
WHERE film @> '{"title": "The Incredibles"}'::jsonb; 

UPDATE films
SET film = film || jsonb_build_object('studio', 'Pixar')
WHERE film @> '{"title": "The Incredibles"}'::jsonb; 

SELECT film FROM films -- check the updated data
WHERE film @> '{"title": "The Incredibles"}'::jsonb; 
