-- Listing 16-30: Returning key values from each item in an array

SELECT id, 
       jsonb_array_elements(film -> 'characters')
FROM films
ORDER BY id;

WITH characters (id, json) AS (
    SELECT id,
           jsonb_array_elements(film -> 'characters')
    FROM films
)
SELECT id, 
       json ->> 'name' AS name,
       json ->> 'actor' AS actor
FROM characters
ORDER BY id;
