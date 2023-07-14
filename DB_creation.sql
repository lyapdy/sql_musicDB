CREATE TABLE IF NOT EXISTS genres (
	genre_id serial PRIMARY KEY,
	genre_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS bands (
	band_id serial PRIMARY KEY,
	band_name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS genres_bands (
	genre_band_id serial PRIMARY KEY,
	genre_id int REFERENCES genres(genre_id),
	band_id int REFERENCES bands(band_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id serial PRIMARY KEY,
	album_name varchar(50) NOT NULL,
	album_year int NOT NULL
);

CREATE TABLE IF NOT EXISTS bands_albums (
	band_album_id serial PRIMARY KEY,
	band_id int REFERENCES bands(band_id),
	album_id int REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id serial PRIMARY KEY,
	track_name varchar(50) NOT NULL,
	track_duration int NOT NULL,
	album_id int REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id serial PRIMARY KEY,
	collection_name varchar(50) NOT NULL,
	collection_year int NOT NULL
);

CREATE TABLE IF NOT EXISTS collections_tracks (
	collections_tracks_id serial PRIMARY KEY,
	collection_id int REFERENCES collections(collection_id),
	track_id int REFERENCES tracks(track_id)
);