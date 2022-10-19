CREATE DATABASE catalog_of_things;



CREATE TABLE music(
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        "name" TEXT,
        on_spotify BOOLEAN,
        publish_date DATE,
        archived BOOLEAN,
        genre_id INTEGER,
        source_id INTEGER,
        author_id INTEGER,
        label_id INTEGER,
        FOREIGN KEY(genre_id) REFERENCES genre(id),
        FOREIGN KEY(source_id) REFERENCES source(id),
        FOREIGN KEY(author_id) REFERENCES author(id),
        FOREIGN KEY(label_id) REFERENCES label(id)
);

CREATE TABLE genre(
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
        "name" TEXT
);