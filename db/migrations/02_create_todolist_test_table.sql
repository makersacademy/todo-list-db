CREATE DATABASE TodoList_test;
\c todolist_test;
CREATE TABLE todo(id SERIAL PRIMARY KEY, title VARCHAR, body VARCHAR);
