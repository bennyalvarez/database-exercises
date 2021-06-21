USE codeup_test_db;

SELECT 'All albums in your table' AS 'Query One';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Query Two';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums released by Michael Jackson' AS 'Query Three';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

SELECT 'Sales BEFORE' AS 'Query Four';
SELECT sales FROM albums;
--
-- UPDATE albums
-- SET sales = sales * 10;    comment this out after you try it so it won't multiply over and over.

SELECT 'Sales AFTER' AS "Query Five";
SELECT sales FROM albums;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

UPDATE albums
SET artist = 'Peter Jackson';
WHERE artist = 'Micheal Jackson';

SELECT 'CHanging Michael to Peter Jackson' AS 'Query Seven';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';




