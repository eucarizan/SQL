-- Listing 16-9: Demonstrating existence operators

-- Does the text string exist as a top-level key or array element within the JSON value?
SELECT film ->> 'title' AS title
FROM films
WHERE film ? 'rating';

-- Do any of the strings in the text array exist as top-level keys or array elements?
SELECT film ->> 'title' AS title,
       film ->> 'rating' AS rating,
       film ->> 'genre' AS genre
FROM films
WHERE film ?| '{rating, genre}';

-- Do all of the strings in the text array exist as top-level keys or array elements?
SELECT film ->> 'title' AS title,
       film ->> 'rating' AS rating,
       film ->> 'genre' AS genre
FROM films
WHERE film ?& '{rating, genre}';
