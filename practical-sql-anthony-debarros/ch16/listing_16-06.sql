-- Listing 16-6: Demonstrating the @> containment operator

-- Does the film JSON value contain the following key/value pair?
SELECT id, film ->> 'title' AS title,
       film @> '{"title": "The Incredibles"}'::jsonb AS is_incredible
FROM films
ORDER BY id;
