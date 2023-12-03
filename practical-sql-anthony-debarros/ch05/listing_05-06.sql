-- Listing 5-6: Importing a subset of rows with WHERE

DELETE FROM supervisor_salaries;

COPY supervisor_salaries (town, supervisor, salary)
FROM 'C:\YourDirectory\supervisor_salaries.csv'
WITH (FORMAT CSV, HEADER)
WHERE town = 'New Brillig';
