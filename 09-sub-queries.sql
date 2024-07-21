CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
);

INSERT INTO artists (artist_name)
VALUES 
    ('The Beatles'),
    ('Michael Jackson'),
    ('Rick Astley'),
    ('AC/DC'),
    ('Rick Springfield');

SELECT * FROM artists;

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    song_name VARCHAR(255) NOT NULL,
    artist_id INTEGER REFERENCES artists(id)
);

INSERT INTO songs (song_name, artist_id)
VALUES 
    ('Hey Jude', 1),
    ('Billie Jean', 2),
    ('Never Gonna Give You Up', 3),
    ('Highway to Hell', 4),
    ('Jessie''s Girl', 5);
	
SELECT * FROM songs;
	
SELECT id, song_name, artist_id
FROM songs
WHERE artist_id IN (
    SELECT id FROM artists 
    WHERE artist_name LIKE 'Rick%'
);

SELECT 12 + 3 AS sum;
