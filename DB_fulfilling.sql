INSERT INTO genres
(genre_name)
VALUES
('Raps'), 
('Popsas'), 
('Metals'), 
('Punks');

INSERT INTO bands
(band_name)
VALUES
('Metallica'), 
('Eminem'), 
('Король и шут'), 
('Дэцл'), 
('Блеск очей');

INSERT INTO genres_bands
(genre_id, band_id)
VALUES
(1, 5),
(2, 4),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO albums
(album_name, album_year)
VALUES
('Будь как дома путник', 1997),
('Вечеринка', 2006), 
('Plastic', 2021), 
('Metallica', 2019), 
('Meteora', 2003);

INSERT INTO tracks
(track_name, track_duration, album_id)
VALUES
('Мой юный друг', 166, 3), 
('Мой ответ', 255, 1), 
('Metallurgy', 220, 4), 
('Bury My Hatchet', 152, 5), 
('Наше дело', 270, 2), 
('Closet', 169, 5);

INSERT INTO bands_albums
(band_id, album_id)
VALUES
(1, 4), 
(2, 5), 
(3, 1), 
(5, 3), 
(4, 2);

INSERT INTO collections
(collection_name, collection_year)
VALUES
('Народный мой бунт', 2005), 
('Мы за правду', 2021), 
('Lost in Translation', 1998), 
('Saints in my House', 2001);

INSERT INTO collections_tracks
(collection_id, track_id)
VALUES
(1, 1), 
(2, 2), 
(3, 4), 
(4, 5);