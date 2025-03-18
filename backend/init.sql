CREATE TABLE IF NOT EXISTS todos (
  id SERIAL PRIMARY KEY,
  task TEXT NOT NULL,
  completed BOOLEAN DEFAULT FALSE
);

INSERT INTO todos (task) VALUES ('Task 1');
INSERT INTO todos (task) VALUES ('Task 2');
INSERT INTO todos (task) VALUES ('Task 3');
INSERT INTO todos (task) VALUES ('Task 4');