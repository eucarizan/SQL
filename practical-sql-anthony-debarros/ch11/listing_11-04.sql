-- Listing 11-4: Regression slope and intercept functions
SELECT
    round(
	regr_slope(median_hh_income, pct_bachelors_higher)::numeric, 2) AS slope,
    round(
	regr_intercept(median_hh_income, pct_bachelors_higher)::numeric, 2) AS y_intercept
FROM acs_2014_2018_stats;
