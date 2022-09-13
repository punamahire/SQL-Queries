
CREATE PROCEDURE SplitArtistName  
    @ArtistName varchar(100)
AS   
SELECT SUBSTRING(@ArtistName, 1, CHARINDEX(' ', @ArtistName) - 1) AS FirstName,     
       SUBSTRING(@ArtistName,
                 CHARINDEX(' ', @ArtistName) + 1,
                 LEN(@ArtistName) - CHARINDEX(' ', @ArtistName)) AS LastName
FROM Artist;