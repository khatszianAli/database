BEGIN;

INSERT INTO student (student_name, department, student_email)
VALUES ('Temporary Student', 'Test Dept', 'temp@test.com');

ROLLBACK;  

BEGIN;

INSERT INTO student (student_name, department, student_email)
VALUES ('Real Student', 'CS', 'real@test.com');

COMMIT;
