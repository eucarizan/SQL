-- Listing 14-9: Using a capture group to return only the date
-- Eliminates the hyphen
SELECT crime_id,
       regexp_match(original_text, '-(\d{1,2}\/\d{1,2}\/\d{2})')
FROM crime_reports
ORDER BY crime_id;
