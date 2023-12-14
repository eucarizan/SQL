-- Listing 11-5: Calculating the coefficient of determination, or r-squared
SELECT round(regr_r2(median_hh_income, pct_bachelors_higher)::numeric, 3) AS r_squared
FROM acs_2014_2018_stats;
