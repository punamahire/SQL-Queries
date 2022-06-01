/* query 1 */
select * from Genre;

/* query 2 */
select * from Artist order by ArtistName;

/* query 3 */
select s.*, a.ArtistName 
from Song s 
left join Artist a 
on s.ArtistId = a.Id;

/* query 4 */
select distinct ar.ArtistName 
from Artist ar 
inner join Album al 
on al.ArtistId = ar.Id 
inner join Genre g 
on al.GenreId = g.Id 
where g.Name = 'Soul';

/* query 5 */
select distinct ar.ArtistName 
from Artist ar 
left join Album al 
on al.ArtistId = ar.Id 
left join Genre g 
on al.GenreId = g.Id 
where g.Name = 'Jazz' or g.Name = 'Rock';

/* query 6 */
select al.Title 
from Album al 
where not exists (select * from Song s where s.AlbumId = al.Id);

/* query 6 */
select al.Title
from Album al
left join song s on s.AlbumId = al.Id
where s.Id is null;

/* query 7 */
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Justin Bieber', '2009');

/* query 8 */
insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
values ('Purpose', '11/13/2015', 2888, 'Def jam', 28, 7);

/* query 9 */
insert into Song ( Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Sorry', 192, '10/22/2015', 7, 28, 23);
insert into Song ( Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('What do you mean?', 196, '08/28/2015', 7, 28, 23);

/* query 10 */
select s.Title, al.Title, ar.ArtistName 
from Song s 
left join Album al 
on s.AlbumId = al.Id 
left join Artist ar 
on s.ArtistId = ar.Id 
where al.Id = 23 and ar.Id = 28;

/* query 11 */
select COUNT(s.Title) as SongsInAlbum
from Song s
Group by s.AlbumId;

/* query 11 */
select al.Title, COUNT(s.Id) as NumOfSongsByArtist
from Album al
left join song s on s.AlbumId = al.Id
Group by al.Id, al.Title;

/* query 12 */
select COUNT(s.Title) as NumOfSongsByArtist
from Song s
Group by s.ArtistId;

/* query 12 */
select ar.ArtistName, COUNT(s.Id) as NumOfSongsByArtist
from Artist ar
left join Song s on s.ArtistId = ar.Id
Group by ar.Id, ar.ArtistName;

/* query 13 */
select COUNT(s.Title) as NumOfSongsFromGenre
from Song s
Group by s.GenreId;

/* query 14 */
select COUNT(ar.ArtistName) as 'Records With Multiple Labels'
from Artist ar
 left join Album al
on al.ArtistId = ar.Id
group by al.Label
having COUNT(al.Label) > 1;

/* query 14 */
select ar.ArtistName, COUNT(distinct al.Label) as 'Number of Albums'
from Artist ar
join Album al on al.ArtistId = ar.Id
Group by ar.ArtistName
having COUNT(distinct al.Label) > 1;

/* query 15 */
select top 1 percent al.Title, al.AlbumLength
from Album al
order by al.AlbumLength desc;

/* query 15 */
select top 1 * 
from Album 
order by AlbumLength desc;

/* query 16 */
select top 1 percent s.Title, s.SongLength
from Song s
order by s.SongLength desc;

/* query 17 */
select top 1 percent s.Title as SongTitle, al.Title as AlbumTitle, s.SongLength
from Song s
inner join Album al
on s.AlbumId = al.Id
order by s.SongLength desc;

