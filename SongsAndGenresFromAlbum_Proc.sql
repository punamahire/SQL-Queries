DROP PROCEDURE IF EXISTS SongsAndGenresFromAlbum;
GO
CREATE PROCEDURE SongsAndGenresFromAlbum
	@InputAlbumId int
AS   
SELECT al.Title as Album, s.Title as Song, g.Name as Genre
FROM Album al
join Song s on s.AlbumId = al.Id
join Genre g on s.GenreId = g.Id
WHERE al.Id = @InputAlbumId;
GO