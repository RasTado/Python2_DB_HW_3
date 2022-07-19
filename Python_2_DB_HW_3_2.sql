--�������� � ��� ������ ��������, �������� � 2018 ����;
SELECT album_name, album_year FROM album
WHERE album_year = 2018;

--�������� � ����������������� ������ ����������� �����;
SELECT track_name,duration FROM track
WHERE duration=(SELECT MAX(duration) FROM track);
--or
SELECT track_name,duration FROM track
ORDER BY duration DESC
LIMIT 1;

--�������� ������, ����������������� ������� �� ����� 3,5 ������;
SELECT track_name,duration FROM track
WHERE duration >= '00:03:30';

--�������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
SELECT digest_name FROM digest
WHERE digets_year BETWEEN 2018 AND 2020;

--�����������, ��� ��� ������� �� 1 �����;
SELECT musican_name FROM musican
WHERE musican_name NOT LIKE '% %';

--�������� ������, ������� �������� ����� "���"/"my".
SELECT track_name FROM track
WHERE LOWER(track_name) LIKE '%my%' OR LOWER(track_name) LIKE '%���%';