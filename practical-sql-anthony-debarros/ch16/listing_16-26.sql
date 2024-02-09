-- Listing 16-26: Setting an array value at a path

UPDATE films
SET film = jsonb_set(film,
                 '{genre}',
                  film #> '{genre}' || '["World War II"]',
                  true)
WHERE film @> '{"title": "Cinema Paradiso"}'::jsonb; 

SELECT film FROM films -- check the updated data
WHERE film @> '{"title": "Cinema Paradiso"}'::jsonb; 

