# CREATE DATABASE IF NOT EXISTS join_test_db;
# USE join_test_db;
# DROP TABLE IF EXISTS roles;
# DROP TABLE IF EXISTS users;
#
# CREATE TABLE roles (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# email VARCHAR(100) NOT NULL,
# role_id INT UNSIGNED DEFAULT NULL,
# PRIMARY KEY (id),
# FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users  (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', null);
#
# INSERT INTO users (name, email, role_id) VALUES
# ('john', 'john@example.com', 1),
# ('winston', 'winston@example.com', 2),
# ('cecelia', 'cecelia@example.com', 4),
# ('helen', 'helen@example.com', null);
#
# SELECT users.name, roles.name FROM users
# JOIN roles ON users.role_id = roles.id;
#
# SELECT roles.name, COUNT(*)
# FROM roles
# JOIN users ON users.role_id = roles.id
# GROUP BY roles.name;
#
# SELECT COUNT(*) AS Count, roles.name AS Roles, users.name AS Users FROM users
# INNER JOIN roles ON users.role_id = roles.id
# GROUP BY Roles, Users;

                    -- EMPLOYEE DATABASE EXERCISES --

# Write a query that shows each department along with the name of the
  # current manager for that department.

USE employees;
DESCRIBE employees;
DESCRIBE titles;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
  JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > CURDATE()
ORDER BY departments.dept_name;


# Find the name of all the departments currently managed by women

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
  JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE gender = 'F'
  AND dept_manager.to_date > CURDATE()
ORDER BY departments.dept_name;


# Find the current titles of employees currently working in the Customer
  # Service department

SELECT titles.title, COUNT(titles.title)
FROM titles
  JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
WHERE titles.to_date > CURDATE()
  AND dept_emp.to_date > CURDATE()
  AND dept_name = 'Customer Service'
GROUP BY titles.title;


# Find the current salary of all current managers

SELECT departments.dept_name, CONCAT(first_name, ' ', last_name), salaries.salary
FROM employees
  JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
  JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > CURDATE()
  AND salaries.to_date > CURDATE()
ORDER BY departments.dept_name;