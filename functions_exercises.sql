use employees;

# Reverse the sort order for both queries
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;

# Change the query for employees hired in the 90s and born on Christmas
# Use datediff() to find how many days they have been working at the company
SELECT hire_date, first_name, last_name, birth_date, CONCAT(first_name, ' has worked here for ', datediff(curdate(), hire_date) / 365, ' years') AS 'Years of employment'
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;