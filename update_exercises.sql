USE codeup_test_db;

# Write SELECT statements to output each of the following with a caption:
# All albums in your table
# All albums released before 1980
# All albums by The Beatles

# After each SELECT add an UPDATE statement to:
# Make all albums 10 times more popular (sales * 10)
# Move all the albums before 1980 to the 1880s
# Change 'Bruce Springsteen' to 'Blues Springsteen'

# Add SELECT statements after each UPDATE so you can see the results of your handiwork

SELECT name
FROM albums;

SELECT name
FROM albums
WHERE release_date < 1980;

SELECT name
FROM albums
WHERE artist = "The Beatles";

UPDATE  albums
SET sales = (sales * 10);

UPDATE albums
SET release_date = 1880
WHERE release_date < 1980



