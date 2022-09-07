CREATE DATABASE day1;
SHOW DATABASES;
USE day1;
CREATE TABLE universities(
    name VARCHAR(30),
    location VARCHAR(30)
);
INSERT INTO universities (name) VALUES ('UofC');
INSERT INTO universities (name, location) VALUES ('UofT', 'Toronto');
UPDATE universities SET location='Calgary' WHERE name='UofC';
INSERT INTO universities (name, location) VALUES ('MRU', 'Calgary');
INSERT INTO universities (name, location) VALUES ("St. Mary's", 'Calgary');
INSERT INTO universities (name, location) VALUES ("UBC", 'Vancouver');
ALTER TABLE universities ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE universities ADD COLUMN u_rank INT;
ALTER TABLE universities ADD COLUMN province VARCHAR(30);
ALTER TABLE universities ADD COLUMN mcrank INT DEFAULT 0;
DELETE FROM universities WHERE name='MRU';
INSERT INTO universities (name, location) VALUES ('MRU', 'Calgary');
