-- Listing 12-2: Three functions for making datetimes from components
SELECT make_date(2022, 2, 22);
SELECT make_time(12, 4, 30.3);
SELECT make_timestamptz(2022, 2, 22, 18, 4, 30.3, 'Europe/Lisbon');
