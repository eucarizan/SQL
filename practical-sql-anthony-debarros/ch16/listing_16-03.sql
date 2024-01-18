-- Listing 16-3: Retrieving a JSON key value with field extraction operators 

-- Returns the key value as a JSON data type
SELECT id, film -> 'title' AS title
FROM films
ORDER BY id;

-- Returns the key value as text
SELECT id, film ->> 'title' AS title
FROM films
ORDER BY id;

-- Returns the entire array as a JSON data type
SELECT id, film -> 'genre' AS genre
FROM films
ORDER BY id;
