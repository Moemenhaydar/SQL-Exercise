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
  

