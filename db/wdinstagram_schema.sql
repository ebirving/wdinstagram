DROP TABLE IF EXISTS entries;
DROP TABLE IF EXISTS comments;

CREATE TABLE entries(
  id SERIAL PRIMARY KEY,
  author TEXT,
  photo_url TEXT,
  date_taken TEXT,
  caption TEXT
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  entry_id INT,
  commenter TEXT,
  content TEXT
)
