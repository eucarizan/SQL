-- Listing 16-7: Using a containment operator in a WHERE clause

SELECT film ->> 'title' AS title,
       film ->> 'year' AS year
FROM films
WHERE film @> '{"title": "The Incredibles"}'::jsonb; 
