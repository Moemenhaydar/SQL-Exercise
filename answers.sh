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
