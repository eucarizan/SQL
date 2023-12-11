-- Listing 9-5: Using count() for the number of distinct values in a column
SELECT count(libname) FROM pls_fy2018_libraries;

SELECT count(DISTINCT libname) FROM pls_fy2018_libraries;
