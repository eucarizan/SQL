-- Listing 16-5: Retrieving a JSON key value with path extraction operators

-- Retrieve the film's MPAA rating.
SELECT id, film #> '{rating, MPAA}' AS mpaa_rating
FROM films
ORDER BY id;

-- Retrieve the name of the first character
SELECT id, film #> '{characters, 0, name}' AS name
FROM films
ORDER BY id;

-- Same as above but return it as text
SELECT id, film #>> '{characters, 0, name}' AS name
FROM films
ORDER BY id;
