CREATE INDEX idx_student_email ON student(student_email);
CREATE INDEX idx_course_name ON course(course_name);
CREATE INDEX idx_enrollment_student ON enrollment(student_id);
CREATE INDEX idx_submission_student ON submission(student_id);
