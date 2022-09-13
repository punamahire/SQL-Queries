DROP PROCEDURE IF EXISTS AlbumsWithSongsByArtist;
GO
CREATE PROCEDURE AlbumsWithSongsByArtist
	@Id int
AS
	SELECT * 
	FROM Artist a
	JOIN  Album al ON al.ArtistId = a.Id
	JOIN Song s ON s.AlbumId = al.Id
	WHERE a.Id = @Id;
GO