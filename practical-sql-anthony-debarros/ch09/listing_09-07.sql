-- Listing 9-7: Using GROUP BY on the stabr column
SELECT stabr
FROM pls_fy2018_libraries
GROUP BY stabr
ORDER BY stabr;

-- Bonus: there are 54 in 2017.
SELECT stabr
FROM pls_fy2017_libraries
GROUP BY stabr
ORDER BY stabr;
