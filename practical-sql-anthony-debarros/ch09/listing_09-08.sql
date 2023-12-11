-- Listing 9-8: Using GROUP BY on the city and stabr columns
SELECT city, stabr
FROM pls_fy2018_libraries
GROUP BY city, stabr
ORDER BY city, stabr;

-- Bonus: We can count the combos
SELECT city, stabr, count(*)
FROM pls_fy2018_libraries
GROUP BY city, stabr
ORDER BY count(*) DESC;
