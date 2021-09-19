CREATE TABLE IF NOT EXISTS Singer (
	id_singer SERIAL PRIMARY KEY,
	name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id_album SERIAL PRIMARY KEY,
	title varchar(60) NOT NULL,
	yaer_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Track (
	id_track SERIAL PRIMARY KEY,
	id_album integer NOT NULL REFERENCES Album(id_album),
	title_track varchar(60) NOT NULL,
	duration numeric NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	id_genre SERIAL PRIMARY KEY,
	genre varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	id_collection SERIAL PRIMARY KEY,
	title varchar(60) NOT NULL,
	yaer_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS SingerGenre (
	id_singer integer REFERENCES Singer(id_singer),
	id_genre integer REFERENCES Genre(id_genre),
	CONSTRAINT pk PRIMARY KEY (id_singer, id_genre)
);

CREATE TABLE IF NOT EXISTS SingerAlbum (
	id_singer integer REFERENCES Singer(id_singer),
	id_album integer REFERENCES Album(id_album),
	CONSTRAINT pk2 PRIMARY KEY (id_singer, id_album)
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	id_collection integer REFERENCES Collection(id_collection),
	id_track integer REFERENCES Track(id_track),
	CONSTRAINT pk3 PRIMARY KEY (id_collection, id_track)
);