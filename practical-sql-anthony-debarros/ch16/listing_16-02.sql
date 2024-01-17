-- Listing 16-2: Creating a table to hold JSON data and adding an index

CREATE TABLE films (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    film jsonb NOT NULL
);

COPY films (film)
FROM 'C:\YourDirectory\films.json';

CREATE INDEX idx_film ON films USING GIN (film);

SELECT * FROM films;
