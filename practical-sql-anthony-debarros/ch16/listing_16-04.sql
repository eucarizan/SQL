-- Listing 16-4: Retrieving a JSON array value with element extraction operators 

-- Extracts first element of the JSON array
-- (array elements are indexed from zero, but negative integers count from the end).
SELECT id, film -> 'genre' -> 0 AS genres
FROM films
ORDER BY id;

SELECT id, film -> 'genre' -> -1 AS genres
FROM films
ORDER BY id;

SELECT id, film -> 'genre' -> 2 AS genres
FROM films
ORDER BY id;

-- Return the array element as text
SELECT id, film -> 'genre' ->> 0 AS genres
FROM films
ORDER BY id;
