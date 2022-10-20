CREATE TABLE item (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    author_id INTEGER NOT NULL,
    source_id INTEGER NOT NULL,
    label_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author (id),
    FOREIGN KEY (source_id) REFERENCES source (id),
    FOREIGN KEY (label_id) REFERENCES label (id),
    FOREIGN KEY (genre_id) REFERENCES genre (id)
);

CREATE TABLE book
(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  publish_date DATE,
  archived     BOOLEAN,
  publisher    VARCHAR(100),
  cover_state  VARCHAR(50),
  label_id     INTEGER REFERENCES label (id)
);

CREATE TABLE label
(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100)
);

CREATE TABLE game(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer VARCHAR(255) NOT NULL,
  last_played_at DATE NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item (id)
);

CREATE TABLE author(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);