INSERT INTO student (student_name, department, student_email)
VALUES
('Ali Khatszian', 'Software Engineering', 'ka12438@auca.kg'),
('Ikbol Allakhunov', 'Software Engineering', 'ai12351@auca.kg');

INSERT INTO instructor (instructor_name, instructor_email, department)
VALUES
('Gulzada Esenalieva', 'esenalieva_gu@auca.kg', 'Software Engineering');

INSERT INTO course (course_name, description, credit, instructor_id)
VALUES
('Database', 'Introduction to databases', 6, 1);

INSERT INTO enrollment (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(2, 1, 'A');

INSERT INTO assignment (course_id, title, deadline, total_mark)
VALUES
(1, 'ER Diagram Project', '2025-12-01 23:59:00', 100);

INSERT INTO submission (assignment_id, student_id, obtained_mark)
VALUES
(1, 1, 95),
(1, 2, 95);
