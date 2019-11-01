CREATE DATABASE TodoList;
\c todolist;
CREATE TABLE Todo(id SERIAL PRIMARY KEY, title VARCHAR, body VARCHAR);
INSERT INTO TODO (title, body) VALUES ('Today', 'Buy milk');

