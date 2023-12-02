-- Listing 3-8: Filtering with LIKE and ILIKE
SELECT first_name FROM teachers WHERE first_name LIKE 'sam%';
SELECT first_name FROM teachers WHERE first_name ILIKE 'sam%';
