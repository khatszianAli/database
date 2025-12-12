-- Enrolling a Student
BEGIN;

-- Verify that the student exists
SELECT * FROM student WHERE student_id = 1 FOR SHARE;

-- Verify the course exists
SELECT * FROM course WHERE course_id = 3 FOR SHARE;

-- Insert enrollment
INSERT INTO enrollment (student_id, course_id, grade)
VALUES (1, 3, 'N/A');

COMMIT;

-- Student Submits
BEGIN;

-- Add submission
INSERT INTO submission (assignment_id, student_id, obtained_mark)
VALUES (6, 1, 98)
RETURNING submission_id;

-- Update enrollment grade
UPDATE enrollment
SET grade = 'A'
WHERE student_id = 1 AND course_id = 1;

COMMIT;

-- Instructor Creates a New Course && assignment
BEGIN;

-- Create the course
INSERT INTO course (course_name, description, credit, instructor_id)
VALUES ('Data Structures', 'Intro to Data Structures', 6, 1)
RETURNING course_id;

-- Create assignment for the course
INSERT INTO assignment (course_id, title, deadline, total_mark)
VALUES (currval('course_course_id_seq'), 'First Homework', '2025-12-10 23:59:00', 100);

COMMIT;

