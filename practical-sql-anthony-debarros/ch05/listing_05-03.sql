-- Listing 5-3: Importing Census data using COPY
-- Note! If you run into an import error here, be sure you downloaded the code and
-- data for the book according to the steps listed in Chapter 1.
-- Windows users: Please check the Note on PAGE XXXXXX as well.

COPY us_counties_pop_est_2019
FROM 'C:\YourDirectory\us_counties_pop_est_2019.csv'
WITH (FORMAT CSV, HEADER);
