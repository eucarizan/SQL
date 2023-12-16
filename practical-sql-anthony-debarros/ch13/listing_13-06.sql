-- Listing 13-6: Using a subquery in a calculation
SELECT
    county_name,
    state_name AS st,
    pop_est_2019,
    pop_est_2019 - (SELECT percentile_cont(.5) WITHIN GROUP (ORDER BY pop_est_2019)
	            FROM us_counties_pop_est_2019) AS diff_from_median
FROM us_counties_pop_est_2019
WHERE (pop_est_2019 - (SELECT percentile_cont(.5) WITHIN GROUP (ORDER BY pop_est_2019)
                      FROM us_counties_pop_est_2019)) 
       BETWEEN -1000 AND 1000;
 
