use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT first_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees hired in the 90s
SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%';

# Find all employees born on Christmas
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

# Find all employees with a 'q' in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Irene'
  OR first_name = 'Vidya'
  OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male
SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
  AND gender = 'M';

# Find all employees whose last name starts or ends with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%e';

# Find all employees hired in the 90s and born on Christmas
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%'
  AND  birth_date LIKE '%-12-25'
ORDER BY last_name, birth_date;

# Find all employees with a 'q' in their last name but not 'qu'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';