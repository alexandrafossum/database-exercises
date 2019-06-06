use employees;
use codeup_test_db;

# Return 10 employees in a result set named 'full_name' in the format of
  # 'lastname, firstname' for each employee.
# Add the date of birth for each employee as 'DOB' to the query.
# Update the query to format full name to include the employee number so
  # it is formatted as 'employee number - lastname, firstname

SELECT CONCAT(emp_no, ' - ' ,last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY full_name, DOB
LIMIT 10;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY emp_no, full_name, DOB
ORDER BY last_name
LIMIT 10;

-- INDICES EXERCISE --

SHOW databases;
DESCRIBE employees;

SHOW tables;

# USE your codeup_test_db database
use codeup_test_db;
SHOW tables;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (artist, name);

# DESCRIBE songs;
#
# CREATE TABLE songs (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   song_title VARCHAR(255),
#   song_length TIME NOT NULL,
#   album_id INT UNSIGNED NOT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (album_id) references albums (id)
# );
#
# INSERT INTO albums (artist, name, release_date, sales, genre)
#   VALUE ('Sufjan Stevens', 'Carrie & Lowell', 2015, null, 'Alternative');


