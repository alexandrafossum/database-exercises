use employees;

# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Employees born on Christmas and hired in the 90s, limit to 5
SELECT hire_date, first_name, last_name, birth_date
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

# Update the query to find the tenth page of results.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;