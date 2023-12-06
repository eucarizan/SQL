-- Listing 6-12: Passing an array of values to percentile_cont()

-- quartiles
SELECT percentile_cont(ARRAY[.25,.5,.75])
       WITHIN GROUP (ORDER BY pop_est_2019) AS quartiles
FROM us_counties_pop_est_2019;

-- Extra:
-- quintiles
SELECT percentile_cont(ARRAY[.2,.4,.6,.8])
       WITHIN GROUP (ORDER BY pop_est_2019) AS quintiles
FROM us_counties_pop_est_2019;

-- deciles
SELECT percentile_cont(ARRAY[.1,.2,.3,.4,.5,.6,.7,.8,.9])
       WITHIN GROUP (ORDER BY pop_est_2019) AS deciles
FROM us_counties_pop_est_2019;
