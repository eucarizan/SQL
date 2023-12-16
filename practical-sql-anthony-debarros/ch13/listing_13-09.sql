-- Listing 13-9: Using a correlated subquery with WHERE EXISTS
SELECT first_name, last_name
FROM employees
WHERE NOT EXISTS ( SELECT id FROM retirees WHERE id = employees.emp_id);
