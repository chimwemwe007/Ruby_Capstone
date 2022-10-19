CREATE TABLE music_albums(
  id INT GENERATED ALWAYS AS IDENTITY,
  on_spotify BOOLEAN,
  FOREIGN KEY(id) REFERENCES genres(id),
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE genres(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255)
  PRIMARY KEY(id)
);
