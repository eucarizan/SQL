-- Listing 14-5: Creating and loading the crime_reports table
-- Data from https://sheriff.loudoun.gov/dailycrime

CREATE TABLE crime_reports (
    crime_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    case_number text,
    date_1 timestamptz,  -- note: this is the PostgreSQL shortcut for timestamp with time zone
    date_2 timestamptz,  -- note: this is the PostgreSQL shortcut for timestamp with time zone
    street text,
    city text,
    crime_type text,
    description text,
    original_text text NOT NULL
);

COPY crime_reports (original_text)
FROM 'C:\YourDirectory\crime_reports.csv'
WITH (FORMAT CSV, HEADER OFF, QUOTE '"');

SELECT original_text FROM crime_reports;
