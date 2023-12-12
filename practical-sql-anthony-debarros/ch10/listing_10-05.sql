-- Listing 10-5: Using GROUP BY and count() to find inconsistent company names
SELECT company, count(*) AS company_count
FROM meat_poultry_egg_establishments
GROUP BY company
ORDER BY company ASC;
