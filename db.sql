CREATE DATABASE test08;
USE test08;
CREATE TABLE managers (
     id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
     FirstName varchar(50),
     LastName varchar(50),
     position varchar(100),
     salary int(10)
     );
INSERT INTO managers (FirstName, LastName, position, salary)
     VALUES ('Lemur', 'Lemurov', 'founder', 123456789);
INSERT INTO managers (FirstName, LastName, position, salary)
     VALUES
     ('Cat', 'Catster', 'director', 12345678),
     ('Goose', 'Gangster', 'accountant', 123456788),
     ('Panda', 'Bearovich', 'secretary', 1234567);
UPDATE managers
     SET LastName = 'Kingster', salary = 1023456789
     WHERE id = 1;
DELETE FROM managers
     WHERE FirstName = 'Panda';
INSERT INTO managers (FirstName, LastName, position, salary)
     VALUES ('Panda', 'Bearovich', 'accountant', 1246745);
SELECT DISTINCT position FROM managers;
SELECT COUNT(DISTINCT position) FROM managers;
SELECT LastName FROM managers
     WHERE salary>1246745;
SELECT LastName FROM managers
     WHERE salary>1246745 AND id!=1;
SELECT FirstName, LastName
     FROM managers
     ORDER BY salary DESC;
SELECT * FROM managers LIMIT 2;
SELECT MIN(salary)
     FROM managers;
SELECT AVG(salary), LastName
     FROM managers;
SELECT * FROM managers
     WHERE LastName LIKE 'B%';
SELECT * FROM managers
     WHERE position IN ('founder', 'director');
SELECT LastName, salary
     FROM managers
     WHERE salary BETWEEN 123456788 AND 1023456789;
SELECT FirstName as guys
     FROM managers;
CREATE TABLE customers (
     id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
     FirstName varchar(50),
     LastName varchar(50),
     status varchar(50),
     income int(10)
     );
INSERT INTO customers (FirstName, LastName, status, income)
     VALUES
     ('Pig', 'Pigster', 'reliable', 12345);
INSERT INTO customers (FirstName, LastName, status, income)
     VALUES
     ('Frog', 'Frogster', 'risky', 3333),
     ('Cow', 'Cowster', 'stable', 1236);
SELECT FirstName, LastName FROM managers
     UNION
     SELECT FirstName, LastName FROM customers;
SELECT LastName
     FROM managers
     WHERE id = ANY (SELECT id FROM customers WHERE id>1);
INSERT INTO managers (FirstName, LastName)
     SELECT FirstName, LastName
     FROM customers;
SELECT LastName, IFNULL(salary, FirstName) FROM managers;

