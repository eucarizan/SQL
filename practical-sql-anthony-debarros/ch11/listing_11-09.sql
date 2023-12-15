-- Listing 11-9: Finding business rates per thousand population in counties with 50,000 or more people
SELECT
    cbp.county,
    cbp.st,
    cbp.establishments,
    pop.pop_est_2018,
    round( (cbp.establishments::numeric / pop.pop_est_2018) * 1000, 1) AS estabs_per_1000
FROM cbp_naics_72_establishments cbp
JOIN us_counties_pop_est_2019 pop ON cbp.state_fips = pop.state_fips AND cbp.county_fips = pop.county_fips
WHERE pop.pop_est_2018 >= 50000
ORDER BY cbp.establishments::numeric / pop.pop_est_2018 DESC;
