-- Listing 14-18: Creating and filling the president_speeches table

-- Sources:
-- https://archive.org/details/State-of-the-Union-Addresses-1945-2006
-- https://www.presidency.ucsb.edu/documents/presidential-documents-archive-guidebook/annual-messages-congress-the-state-the-union
-- https://www.eisenhower.archives.gov/all_about_ike/speeches.html

CREATE TABLE president_speeches (
    president text NOT NULL,
    title text NOT NULL,
    speech_date date NOT NULL,
    speech_text text NOT NULL,
    search_speech_text tsvector,
    CONSTRAINT speech_key PRIMARY KEY (president, speech_date)
);

COPY president_speeches (president, title, speech_date, speech_text)
FROM 'C:\YourDirectory\president_speeches.csv'
WITH (FORMAT CSV, DELIMITER '|', HEADER OFF, QUOTE '@');

SELECT * FROM president_speeches ORDER BY speech_date;
