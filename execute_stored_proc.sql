
/*
USE MusicHistory;  
GO  
EXEC dbo.GetAllGenres;
GO
*/

/*
USE MusicHistory;  
GO  
EXEC dbo.SplitArtistName @ArtistName = 'Mayer HawThome';
GO
*/


EXECUTE AlbumsWithSongsByArtist @Id = 8;

-- EXECUTE SongsAndGenresFromAlbum @InputAlbumId = 5;

/*
DECLARE @SongsByArtist int;

EXECUTE NumOfSongsByArtist
    @InputArtistId = 3, @NumOfSongs = @SongsByArtist OUTPUT;  

PRINT 'Number of songs by this artist: ' +  CONVERT(varchar(10),@SongsByArtist);  
GO
*/