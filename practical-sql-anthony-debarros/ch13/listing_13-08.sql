-- Listing 13-8: Generating values for the IN operator
SELECT first_name, last_name
FROM employees
WHERE emp_id IN ( SELECT id FROM retirees )
ORDER BY emp_id;
