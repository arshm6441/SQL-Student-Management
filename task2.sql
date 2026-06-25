-- =========================================
-- TASK 2 : Student Course Management System
-- =========================================

-- Create Courses Table
CREATE TABLE courses (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Enrollments Table
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    FOREIGN KEY (student_id) REFERENCES Students(StudentID),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert Data into Courses Table
INSERT INTO courses VALUES
(1, 'SQL'),
(2, 'Python'),
(3, 'Power BI');

-- Insert Data into Enrollments Table
INSERT INTO enrollments VALUES
(1,1,85),
(2,1,72),
(3,2,95),
(4,2,35),
(5,3,65),
(6,3,88),
(7,1,78),
(8,2,92),
(9,3,30),
(10,1,81);

-- List All Students Enrolled in Each Course
SELECT s.Name, c.name AS Course
FROM enrollments e
JOIN Students s
ON e.student_id = s.StudentID
JOIN courses c
ON e.course_id = c.id;

-- Average Grade Per Course
SELECT c.name,
AVG(e.grade) AS avg_grade
FROM enrollments e
JOIN courses c
ON e.course_id = c.id
GROUP BY c.name;

-- Top 3 Students Overall
SELECT s.Name,
AVG(e.grade) AS avg_grade
FROM enrollments e
JOIN Students s
ON e.student_id = s.StudentID
GROUP BY s.Name
ORDER BY avg_grade DESC
LIMIT 3;

-- Count Students Who Failed
SELECT COUNT(*) AS failed_students
FROM enrollments
WHERE grade < 40;