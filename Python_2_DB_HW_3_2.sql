--название и год выхода альбомов, вышедших в 2018 году;
SELECT album_name, album_year FROM album
WHERE album_year = 2018;

--название и продолжительность самого длительного трека;
SELECT track_name,duration FROM track
WHERE duration=(SELECT MAX(duration) FROM track);
--or
SELECT track_name,duration FROM track
ORDER BY duration DESC
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты;
SELECT track_name,duration FROM track
WHERE duration >= '00:03:30';

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT digest_name FROM digest
WHERE digets_year BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова;
SELECT musican_name FROM musican
WHERE musican_name NOT LIKE '% %';

--название треков, которые содержат слово "мой"/"my".
SELECT track_name FROM track
WHERE LOWER(track_name) LIKE '%my%' OR LOWER(track_name) LIKE '%мой%';