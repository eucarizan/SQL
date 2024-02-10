-- Listing 16-27: Deleting values from JSON

-- Removes the studio key/value pair from The Incredibles
UPDATE films
SET film = film - 'studio'
WHERE film @> '{"title": "The Incredibles"}'::jsonb; 

-- Removes the third element in the genre array of Cinema Paradiso
UPDATE films
SET film = film #- '{genre, 2}'
WHERE film @> '{"title": "Cinema Paradiso"}'::jsonb; 

