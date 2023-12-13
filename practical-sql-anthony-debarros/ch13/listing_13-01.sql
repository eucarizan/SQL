-- Listing 13-1: Using a subquery in a WHERE clause
SELECT county_name, state_name, pop_est_2019
FROM us_counties_pop_est_2019
WHERE pop_est_2019 >= ( 
	SELECT percentile_cont(.9) WITHIN GROUP (ORDER BY pop_est_2019) 
	FROM us_counties_pop_est_2019)
ORDER BY pop_est_2019 DESC;
