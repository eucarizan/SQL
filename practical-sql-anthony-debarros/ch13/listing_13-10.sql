-- Listing 13-10: Using correlated subquery with WHERE NOT EXISTS
SELECT first_name, last_name
FROM employees
WHERE NOT EXISTS ( SELECT id FROM retirees WHERE id = employees.emp_id );
