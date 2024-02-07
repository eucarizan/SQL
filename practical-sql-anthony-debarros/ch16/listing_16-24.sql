-- Listing 16-24: Aggregating the rows and converting to JSON
SELECT json_agg(to_json(employees)) AS json
FROM (
    SELECT emp_id, last_name AS ln FROM employees
) AS employees;
