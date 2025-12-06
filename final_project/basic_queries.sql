SELECT * FROM student;

SELECT * FROM course;

SELECT s.student_name, c.course_name, e.grade
FROM enrollment e
JOIN student s ON e.student_id = s.student_id
JOIN course c ON e.course_id = c.course_id;
