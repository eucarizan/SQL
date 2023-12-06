-- Listing 7-2: Joining the employees and departments tables
SELECT * FROM employees
JOIN departments
ON employees.dept_id = departments.dept_id
ORDER BY employees.dept_id;
