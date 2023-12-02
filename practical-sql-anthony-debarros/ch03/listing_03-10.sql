-- Listing 3-10: A SELECT statement including WHERE and ORDER BY
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;
