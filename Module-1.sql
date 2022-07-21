#1
CREATE DATABASE IF NOT EXISTS training;
USE training;

#2
CREATE TABLE IF NOT EXISTS demography
(
	CustID int AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(1),
	PRIMARY KEY (CustID)
);

#3
INSERT INTO demography(Name, Age, Gender)
VALUES('John', 25, 'M');

#4
INSERT INTO demography(Name, Age, Gender)
VALUES('Pawan', 26, 'M'), 
	('Hema', 31, 'F');
    
#5
INSERT INTO demography(Name, Gender)
VALUES('Rekha', 'F');

#6
SELECT 
    *
FROM
    demography;

#7
UPDATE demography 
SET 
    age = NULL
WHERE
    Name = 'John';

#8
SELECT 
    *
FROM
    demography
WHERE
    Age IS NULL;

#9
DELETE FROM demography;

#10
DROP TABLE demography;