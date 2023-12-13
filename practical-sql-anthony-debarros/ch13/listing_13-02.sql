-- Listing 13-2: Using a subquery in a where clause with delete
CREATE TABLE us_counties_2019_top10 AS
SELECT * FROM us_counties_pop_est_2019;

DELETE FROM us_counties_2019_top10
WHERE pop_est_2019 < (
	SELECT percentile_cont(.9) WITHIN GROUP (ORDER BY pop_est_2019)
	FROM us_counties_2019_top10);

SELECT count(*) FROM us_counties_2019_top10;
