CREATE DATABASE MLibrary;

USE MLibrary;



CREATE TABLE Artists (
    artist_id INTEGER PRIMARY KEY,
    artist_name TEXT NOT NULL
);

CREATE TABLE Genre (
    genre_id INTEGER PRIMARY KEY,
    genre_name TEXT NOT NULL
);

CREATE TABLE Albums (
    album_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    artist_id INTEGER,
    genre_id INTEGER,
    release_year INTEGER NOT NULL,
    total_tracks INTEGER NOT NULL
);

ALTER TABLE Albums
ADD COLUMN duration INTEGER;

ALTER TABLE Albums
ADD CONSTRAINT fk_artist
FOREIGN KEY (artist_id)
REFERENCES Artists(artist_id);

ALTER TABLE Albums
ADD CONSTRAINT fk_genre
FOREIGN KEY (genre_id)
REFERENCES Genre(genre_id);
