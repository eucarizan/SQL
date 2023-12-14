-- Listing 11-2: Using corr(Y, X) to measure the relationship between education and income
SELECT corr(median_hh_income, pct_bachelors_higher) AS bachelors_income_r
FROM acs_2014_2018_stats;
