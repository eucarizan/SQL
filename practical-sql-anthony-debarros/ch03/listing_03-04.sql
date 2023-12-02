-- Listing 3-4: Sorting multiple columns with ORDER BY
SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;
