USE codeup_test_db;

# Write SELECT statements for:
  # Albums released after 1991
  # Albums with the genre 'disco'
  # Albums by an artist of your choice

# Make sure to put appropriate captions before each SELECT
# Convert the SELECT statements to DELETE
# Use the MySQL command line client to make sure your records were really removed

SELECT name
  AS 'Albums released after 1991', release_date AS 'Release date'
FROM albums
WHERE release_date > 1991;
DELETE FROM albums
  WHERE release_date > 1991;

SELECT name
  AS 'Disco albums', genre
FROM albums
WHERE genre LIKE '%disco';
DELETE FROM albums
  WHERE genre = 'disco';

SELECT name
  AS 'Albums by Meat Loaf', artist
FROM albums
WHERE artist = 'Meat Loaf';
DELETE FROM albums
  WHERE artist = 'Meat Loaf';

