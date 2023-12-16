-- Listing 13-3: Subquery as a derived table in a FROM clause
SELECT
    round(calcs.average, 0) AS average,
    calcs.median,
    round(calcs.average - calcs.median, 0) AS median_average_diff
FROM (
	SELECT
	    avg(pop_est_2019) AS average,
	    percentile_cont(.5) 
	        WITHIN GROUP (ORDER BY pop_est_2019)::numeric AS median
	FROM us_counties_pop_est_2019
    ) 
AS calcs;
