1.1 - Create Database
CREATE DATABASE StudentManagement;

-- Use Database
USE StudentManagement;

1.2 - Create Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

2.1 - Insert 10 Records
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Arsh', 'Male', 21, 'A', 85, 90, 88),
('Aman', 'Male', 20, 'B', 75, 80, 78),
('Priya', 'Female', 19, 'A', 92, 95, 91),
('Neha', 'Female', 20, 'B', 70, 72, 75),
('Rahul', 'Male', 22, 'C', 65, 68, 70),
('Simran', 'Female', 21, 'A', 88, 85, 90),
('Rohit', 'Male', 20, 'B', 81, 79, 83),
('Pooja', 'Female', 19, 'A', 95, 94, 96),
('Karan', 'Male', 21, 'C', 60, 65, 62),
('Anjali', 'Female', 20, 'B', 84, 86, 82);

3.1 - Show All Student Details
SELECT * FROM Students;

3.2 - Average Score in Each Subject
SELECT
AVG(MathScore) AS Avg_Math,
AVG(ScienceScore) AS Avg_Science,
AVG(EnglishScore) AS Avg_English
FROM Students;

3.3 - Top Performer (Highest Total Score)
SELECT Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

3.4 - Count Students Per Grade
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;

3.5 - Average Score by Gender
SELECT Gender,
AVG(MathScore + ScienceScore + EnglishScore) AS AvgTotalScore
FROM Students
GROUP BY Gender;

3.6 - Students with Math Score Greater Than 80
SELECT *
FROM Students
WHERE MathScore > 80;

3.7 - Update a Student's Grade
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 2;

Verify Update
SELECT * FROM Students
WHERE StudentID = 2;