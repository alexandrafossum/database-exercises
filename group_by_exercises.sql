use employees;

# Use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title FROM titles;

SELECT first_name FROM employees
GROUP BY first_name;

# Find your query for employees whose last names start and end with 'E'.
# Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name
LIMIT 5;

# Update to show unique combinations of first and last names where the last
# name starts and ends with 'E' -- should get 846 rows
SELECT first_name, last_name, COUNT(*) AS 'Count'
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not a 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees
# whose unusual name is shared with others
SELECT COUNT(last_name) AS Count, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

# Update your query for 'Irena', 'Vidya', and 'Maya'.
  # Use COUNT(*) and GROUP BY to find the number of employees for each
  # gender with those names
SELECT Gender, COUNT(*) AS 'Count'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
