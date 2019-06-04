USE codeup_test_db;

# Walk-through syntax

SELECT name AS 'The name of all albums by Pink Floyd', Artist AS 'Band'
       FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released', release_date AS 'Release Year'
       FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind by Nirvana', Genre
       FROM albums WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the ninties', Artist, release_date AS 'Release Year'
       FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Which albums had less than 20 million certified sales', Sales
       FROM albums WHERE sales < 20.0;

SELECT name AS 'All Rock albums', Artist, Genre
       FROM albums
#        WHERE genre = 'Rock';
       WHERE genre LIKE '%Rock';

-- Relational Database Management System

# SELECT 'All albums by Pink Floyd' AS 'Part 1';
# # SELECT name FROM albums WHERE artist = 'Pink Floyd';

# # SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Part 2';
# # SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club';

# SELECT 'The genre for Nevermind by Nirvana' AS 'Part 3';
# # SELECT genre FROM albums WHERE name = 'Nevermind';

# SELECT 'Which albums were released in the 1990s' AS 'Part 4';
# # SELECT name, artist FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# SELECT 'Which albums had less than 20 million certified sales' AS 'Part 5';
# # SELECT name, artist FROM albums WHERE sales < 20;

# SELECT 'All the albums with a genre of Rock' AS 'Part 6';
# # SELECT name FROM albums WHERE genre = "Rock";

