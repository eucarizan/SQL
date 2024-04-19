-- Listing 14-14: Viewing selected crime data

SELECT date_1,
       street,
       city,
       crime_type
FROM crime_reports
ORDER BY crime_id;
