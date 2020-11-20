/*EXEC sp_rename 'tblGames.GENRE', 'Genre', 'COLUMN'; 
ALTER TABLE table_name
ADD column_name datatype;
DELETE FROM tblGames;
DBCC CHECKIDENT ('[tblGames]', RESEED, 0)*/