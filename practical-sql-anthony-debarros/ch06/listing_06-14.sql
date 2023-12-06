-- Listing 6-14: Finding the most-frequent value with mode()

SELECT mode() WITHIN GROUP (ORDER BY births_2019)
FROM us_counties_pop_est_2019;
