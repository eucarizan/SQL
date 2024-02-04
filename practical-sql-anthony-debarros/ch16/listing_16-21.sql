-- Listing 16-21: Turning query results into JSON with to_json()

-- Convert an entire row from the table
SELECT to_json(employees) AS json_rows
FROM employees;
