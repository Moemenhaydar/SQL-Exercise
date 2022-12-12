my database.lb
-----------------------

1_SELECT*FROM students
2-SELECT name FROM students
WHERE Age>30
3-SELECT name FROM students
WHERE Gender="F" and Age>30
4-SELECT Points FROM students
WHERE name="Alex"
5-INSERT INTO students(ID,name,Gender,Age,Points)
VALUES(7,"moemen","M",21,700);
6-UPDATE students SET Points = Points + 70 WHERE Name = "Basma";
7-UPDATE students SET Points = Points - 70 WHERE Name = "Alex";
  
Create graduates tabel
------------------------
1-CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT);
2-INSERT INTO graduates(Name, Age, Gender, Points)
    SELECT Name, Age, Gender, Points FROM students
    WHERE Name = "Layal";
3-UPDATE graduates 
    SET Graduation = "08/09/2018" 
    WHERE Name = "Layal";
4-DELETE FROM students
WHERE name="Layal"

Join
----------
1-CREATE TABLE information AS
	SELECT employees.Name, companies.Name, companies.Date
	FROM employees JOIN companies
	On employees.Company = companies.Name;
2-SELECT Name FROM information
	WHERE Date < 2000;
3-SELECT Company FROM employees
	WHERE Role = "Graphic Designer";

Count and filter
------------------
1-SELECT name FROM students
	WHERE Points = (SELECT MAX(Points) FROM students);
2-SELECT AVG(Points) FROM students;
3-SELECT COUNT(1) FROM students
	WHERE Points = 500;
4-SELECT * FROM students
	WHERE Name LIKE "%s%";
5-SELECT * FROM students
	ORDER BY Points DESC;