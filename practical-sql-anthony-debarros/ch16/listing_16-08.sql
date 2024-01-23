-- Listing 16-8: Demonstrating the <@ containment operator

SELECT film ->> 'title' AS title,
       film ->> 'year' AS year
FROM films
WHERE '{"title": "The Incredibles"}'::jsonb <@ film; 
