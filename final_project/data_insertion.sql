INSERT INTO student (student_name, department, student_email)
VALUES
('Ali Khatszian', 'Software Engineering', 'ka12438@auca.kg'),
('Ikbol Allakhunov', 'Software Engineering', 'ai12351@auca.kg'),
('Anne Wallace', 'Business Administration', 'Anne.Wallace@gmail.com'),  
('Lauren Clark', 'LAS', 'Lauren.Clark@soprasteria.com'),  
('Christopher Duffy', 'AMI', 'Christopher.Duffy@yahoo.com'),   
('Matthew Landry', 'Economic', 'Matthew.Landry@gmail.com');    

INSERT INTO instructor (instructor_name, instructor_email, department)
VALUES
('Gulzada Esenalieva', 'esenalieva_g@auca.kg', 'Software Engineering'),
('Robert Brown', 'Robert.Brown@gmail.com', 'Economic'),
('Angela Lewis', 'Angela.Lewis@gmail.com', 'Business Administration'),
('Alfred Johnson', 'Alfred.Johnson@gmail.com', 'LAS'),
('Kurt Gordon', 'Kurt.Gordon@hotmail.com', 'AMI');

INSERT INTO course (course_name, description, credit, instructor_id)
VALUES
('Database', 'Introduction to databases', 6, 1),
('Macroeconomic', 'Intrduction to Macroeconomic theory', 6, 2),
('Financial accounting', 'Financial accounting 1', 6, 3),
('Social Entrepreneurship', 'Intrduction to Social Entrepreneurship', 6, 4),
('Philosophy of law', 'Introduction to law theory and philosophy of law', 6, 5);

INSERT INTO enrollment (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(2, 1, 'A-'),
(3, 2, 'B'),
(4, 5, 'C'),
(5, 2, 'X'),
(4, 4, 'B+'),
(3, 3, 'B'),
(4, 4, 'B-');

INSERT INTO assignment (course_id, title, deadline, total_mark)
VALUES
(1, 'ER Diagram Project', '2025-12-01 23:59:00', 100),
(2, 'Presentation', '2025-12-04 23:59:00', 100),
(3, 'Homework', '2025-12-05 23:59:00', 100),
(4, 'Presentation', '2025-12-03 23:59:00', 100),  
(5, 'Group assignment', '2025-12-05 23:59:00', 100),
(1, 'Final Project', '2025-12-14 23:59:00', 100);  

INSERT INTO submission (assignment_id, student_id, obtained_mark)
VALUES
(1, 1, 95),
(1, 2, 95),
(3, 4, 80),
(5, 2, 67);
