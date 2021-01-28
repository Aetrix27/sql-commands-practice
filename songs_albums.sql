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

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)

 * 
 */

INSERT INTO Songs
    (name, album_id)
VALUES
    ('Come Together', 2),
    ('Too Late', 5),
    ('Life in the Fast Lane', 3),
    ('Darlington County', 4),
    ('Darlington County', 1)
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

/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name

SELECT Songs.name FROM Songs
 */

SELECT Songs.name, Albums.title FROM Songs
JOIN Albums ON Albums.id = Songs.album_id

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */