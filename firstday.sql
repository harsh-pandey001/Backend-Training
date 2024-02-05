-- SQL(Structured Query Language) is tandard language for accessing and manipulating databases.

-- SELECT - extracts data from a database
-- UPDATE - updates data in a database
-- DELETE - deletes data from a database
-- INSERT INTO - inserts new data into a database
-- CREATE DATABASE - creates a new database
-- ALTER DATABASE - modifies a database
-- CREATE TABLE - creates a new table
-- ALTER TABLE - modifies a table
-- DROP TABLE - deletes a table
-- CREATE INDEX - creates an index (search key)
-- DROP INDEX - deletes an index


-- +---------+-----------+----------+---------+-----------+
-- | rollnum | FirstName | LastName | Address | city      |
-- +---------+-----------+----------+---------+-----------+
-- |       1 | Harsh     | Pandey   | maihar  | Satna     |
-- |       2 | Peter     | Parker   | ausis   | new york  |
-- |       3 | Bruce     | Wayne    | canada  | cambringe |
-- |       4 | Tony      | Stark    | france  | itly      |
-- |       2 | Peter     | Parker   | ausis   | new york  |
-- |       3 | Bruce     | Wayne    | canada  | cambringe |
-- |       4 | Tony      | Stark    | france  | itly      |
-- +---------+-----------+----------+---------+-----------+




-- -------------------Select distinct-----------------
-- The SELECT DISTINCT statement is used to return only distinct (different) values. 

-- mysql> select distinct rollnum from students;
-- +---------+
-- | rollnum |
-- +---------+
-- |       1 |
-- |       2 |
-- |       3 |
-- |       4 |
-- +---------+
