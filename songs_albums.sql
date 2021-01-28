/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    album_id INTEGER NOT NULL,
    name VARCHAR(70) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

INSERT INTO Songs
    (name, album_id)
VALUES
    ('Come Together', 2),
    ('Too Late', 5),
    ('Hotel California', 3),
    ('Darlington County', 4),
    ('Money', 1)
;


INSERT INTO Albums
    (title, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('After Hours', 'The Weeknd', 2020)
;


/* Queries */

SELECT * FROM Songs;
SELECT * FROM Albums;

SELECT Songs.name, Albums.title FROM Songs
JOIN Albums ON Albums.id = Songs.album_id;

SELECT Albums.title FROM Albums 
WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;

SELECT Songs.name FROM Albums JOIN Songs
ON Albums.id = Songs.album_id
WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;

SELECT * FROM Songs
JOIN Albums ON Albums.id = Songs.album_id
WHERE title LIKE "%California%";