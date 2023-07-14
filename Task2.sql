
select track_name, track_duration
from tracks
where track_duration = (select max(track_duration) from tracks);

select track_name, track_duration
from tracks
where track_duration >= 210;

select collection_name, collection_year 
from collections
where collection_year between 2018 and 2022;

select band_name
from bands
where band_name not like '% %';

select track_name
from tracks
where lower(track_name) like 'мой %' or lower(track_name) like '% мой' or lower(track_name) like '% мой %' or lower(track_name) like 'мой' 
or lower(track_name) like 'my %' or lower(track_name) like '% my' or lower(track_name) like '% my %' or lower(track_name) like 'my';

