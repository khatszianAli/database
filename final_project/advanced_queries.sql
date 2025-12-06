SELECT s.student_name, AVG(sub.obtained_mark) AS average_mark
FROM submission sub
JOIN student s ON sub.student_id = s.student_id
GROUP BY s.student_name
ORDER BY average_mark DESC;

SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM course c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

SELECT s.student_name, a.title, sub.submission_date, a.deadline
FROM submission sub
JOIN assignment a ON sub.assignment_id = a.assignment_id
JOIN student s ON sub.student_id = s.student_id
WHERE sub.submission_date > a.deadline;
