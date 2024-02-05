-- Listing 16-22: Specifying columns to convert to JSON
-- Returns key names as f1, f2, etc.
SELECT to_json(row(emp_id, last_name)) AS json_rows
FROM employees;
