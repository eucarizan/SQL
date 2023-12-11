-- Listing 9-5: Using count() for the number of distinct values in a column
SELECT count(libname) FROM pls_fy2018_libraries;

SELECT count(DISTINCT libname) FROM pls_fy2018_libraries;

-- Bonus: find duplicate libnames
-- SELECT libname, count(libname)
-- FROM pls_fy2018_libraries
-- GROUP BY libname
-- ORDER BY count(libname) DESC;

-- Bonus: see location of every Oxford Public Library
-- SELECT libname, city, stabr
-- FROM pls_fy2018_libraries
-- WHERE libname = 'OXFORD PUBLIC LIBRARY';
