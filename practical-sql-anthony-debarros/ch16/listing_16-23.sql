-- Listing 16-23: Generating key names with a subquery
SELECT to_json(employees) AS json_rows
FROM (
    SELECT emp_id, last_name AS ln FROM employees
) AS employees;
