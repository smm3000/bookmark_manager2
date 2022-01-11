As a user
So I can find a bookmark
I would like to see a list of bookmarks.

Domain Model:

![Bookmark Domain Model](https://user-images.githubusercontent.com/92406004/148913524-8d3ef0f4-41fe-4266-a5b9-4bc8022d970f.png)


Setting up the bookmarks database in bookmark manager directory:
(This will be used when the application is being run locally)
1. psql
2. psql CREATE DATABASE bookmark_manager;
3. psql \c bookmark_manager;
4. Run the query in 01_create_bookmarks_table.sql

Setting up the bookmarks database in bookmark manager  test directory:
(This will be used when the application is being tested)
1. psql
2. psql CREATE DATABASE bookmark_manager_test;
3. psql \c bookmark_manager;
4. Run the query in 01_create_bookmarks_table.sql