-- Listing 13-5: Adding a subquery to a column list
SELECT
    county_name,
    state_name AS st,
    pop_est_2019,
    (
	SELECT percentile_cont(.5) WITHIN GROUP (ORDER BY pop_est_2019)
	FROM us_counties_pop_est_2019
    ) AS us_median
FROM us_counties_pop_est_2019;
