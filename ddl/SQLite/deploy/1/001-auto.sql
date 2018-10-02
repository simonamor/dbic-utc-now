-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Tue Oct  2 11:54:56 2018
-- 

;
BEGIN TRANSACTION;
--
-- Table: tests
--
CREATE TABLE tests (
  test_id INTEGER PRIMARY KEY NOT NULL,
  test_date datetime NOT NULL
);
COMMIT;
