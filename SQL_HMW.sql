USE [University]

-- Exc.1:
SELECT * FROM Students

-- Exc.2:
SELECT Students.FirstName, Students.LastName FROM Students

-- Exc.3:
SELECT DISTINCT Students.FirstName FROM Students

-- Exc.4:
SELECT Students.FirstName FROM Students 
WHERE Students.Age < 80

-- Exc.5:
SELECT * FROM Students
WHERE Students.Id = 1

--Exc.6
SELECT Students.Id FROM Students
WHERE Students.FirstName = 'Ami' AND Students.LastName = 'Sason'

--Exc.7
SELECT * FROM Students
WHERE Students.FirstName = 'Ami' OR Students.FirstName = 'Yael' AND Students.Age > 20

--Exc.8
SELECT * FROM Students
WHERE Students.Age IS NULL

--Exc.9
SELECT * FROM Students
WHERE Students.Age IS NOT NULL

--Exc.10 
SELECT Students.FirstName FROM Students 
ORDER BY Students.FirstName ASC

--Exc.11
SELECT * FROM Students
ORDER BY Students.Age DESC

--Exc.12
SELECT Top 2 * FROM Students
ORDER BY age DESC

--Exc.13
SELECT * FROM Students
WHERE Age > 20 AND Students.FirstName LIKE 'a%'

--Exc.14
INSERT INTO Courses (CourseName) 
VALUES('Gaming')

--Exc.15
UPDATE Students
SET Age = 70
WHERE Age > 80

--Exc.16
DELETE FROM Students WHERE Students.Id = 4

--Exc.17
SELECT CourseId, CourseName, StudentId, FirstName, LastName, Grade 
FROM CoursesStudents as cs
JOIN Courses c ON cs.CourseId = c.Id
JOIN Students s ON s.Id = cs.StudentId


