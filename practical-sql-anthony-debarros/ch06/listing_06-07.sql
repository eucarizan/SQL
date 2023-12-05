-- Listing 6-7: Calculating the percent of a county's area that is water
SELECT 
    county_name AS county,
    state_name AS state,
    area_water::numeric / (area_land + area_water) * 100 AS pct_water
FROM us_counties_pop_est_2019
ORDER BY pct_water DESC;
