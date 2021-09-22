SELECT title, yaer_of_release FROM Album
WHERE yaer_of_release=2018;

SELECT title_track, duration FROM Track
ORDER BY duration DESC
LIMIT 1;

SELECT title_track FROM Track
WHERE duration>210;

SELECT title FROM Collection
WHERE yaer_of_release BETWEEN 2018 AND 2020;

SELECT name FROM Singer
WHERE name NOT LIKE '%% %%';

SELECT title_track FROM Track
WHERE title_track LIKE '%%Мой%%';