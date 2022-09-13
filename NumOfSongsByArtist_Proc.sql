DROP PROCEDURE IF EXISTS NumOfSongsByArtist;
GO
CREATE PROCEDURE NumOfSongsByArtist
	@InputArtistId int,
	@NumOfSongs int OUTPUT
AS
	SELECT @NumOfSongs = COUNT(s.Title) 
	FROM Song s
	WHERE ArtistId = @InputArtistId;

	RETURN;
GO