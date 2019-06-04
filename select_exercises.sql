USE codeup_test_db;

-- The name of all albums by Pink Floyd

SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Harts Club Band was released

SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club';

-- The genre for Nevermind by Nirvana

SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s

SELECT name, artist FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales

SELECT name, artist FROM albums WHERE sales < 20;

-- All the albums with a genre of Rock. Why do these query results not include albums with a genre of Hard Rock or Progressive Rock?

SELECT name FROM albums WHERE genre = "Rock";

