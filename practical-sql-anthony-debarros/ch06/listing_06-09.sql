-- Listing 6-9: Using the sum() and avg() aggregate functions
SELECT 
    sum(pop_est_2019) AS county_sum, 
    round(avg(pop_est_2019), 0) AS county_average
FROM us_counties_pop_est_2019;
