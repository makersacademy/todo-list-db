# TodoList App

Getting started:

```
   cd to-do-list-db
   bundle install
   psql -f db/migrations/01_create_todolist_table.sql
   psql -f db/migrations/02_create_todolist_test_table.sql
   rspec
```   

There is a green feature test that can view a list of todo items

There is a failing feature test which (when green) can insert
a new todo item from the browser and then displays the list of
all the todo lists

### Step 1
Implement the code to make the failing test green.

You will need to think about how to add data from the browser and how to store this in the database. You will also need to think about what unit tests you need to write. 

### Step 2
Add this feature. Remember to write a feature test

```
  As a user I would like to be able to set an optional deadline on
  my to do items
```
