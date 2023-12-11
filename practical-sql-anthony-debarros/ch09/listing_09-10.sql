-- Listing 9-10: Using GROUP BY with count() of the stabr and stataddr columns
SELECT stabr, stataddr, count(*)
FROM pls_fy2018_libraries
GROUP BY stabr, stataddr
ORDER BY stabr, stataddr;
