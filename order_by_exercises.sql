use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
# Modify your first query to order by first name
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Update the query to order by first name
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Order by last name before first name
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name;

# Update your queries for employees with 'E' in their last name to sort
# Order the results by their employee number
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

# Reverse the sort order for both queries
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Change the query for employees hired in the 90s and born on Christmas
# such that the first result is the oldest employee who was hired last.
SELECT hire_date, first_name, last_name, birth_date
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;