
select genre_name, count (band_name) from bands b 
join genres_bands gb  on b.band_id = gb.band_id 
join genres g on gb.genre_id = g.genre_id 
group by g.genre_id;

select count(track_name) from tracks t 
join albums a on a.album_id = t.album_id 
where a.album_year between 2019 and 2020;

select album_name, AVG(track_duration) from tracks t 
join albums a on a.album_id = t.album_id 
group by a.album_name;

select band_name from bands b 
where band_name not in (
select band_name from albums a 
join bands_albums ba on a.album_id = ba.album_id 
join bands b on ba.band_id = b.band_id
where a.album_year = 2020);

select collection_name from collections c 
join collections_tracks ct on c.collection_id = ct.collection_id 
join tracks t on ct.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join bands_albums ba on a.album_id = ba.album_id 
join bands b on ba.band_id = b.band_id 
where b.band_name like 'Дэцл';