-- Listing 9-9: Using GROUP BY with count() on the stabr column
SELECT stabr, count(*)
FROM pls_fy2018_libraries
GROUP BY stabr
ORDER BY count(*) DESC;
