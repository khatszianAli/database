CREATE DATABASE lms_db;
\c lms_db;


CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    student_email VARCHAR(150) UNIQUE NOT NULL,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE instructor (
    instructor_id SERIAL PRIMARY KEY,
    instructor_name VARCHAR(100) NOT NULL,
    instructor_email VARCHAR(150) UNIQUE NOT NULL,
    department VARCHAR(100)
);


CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(150) NOT NULL,
    description TEXT,
    credit INTEGER NOT NULL CHECK (credit > 0),
    instructor_id INTEGER REFERENCES instructor(instructor_id)
        ON DELETE SET NULL
);


CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES student(student_id)
        ON DELETE CASCADE,
    course_id INTEGER REFERENCES course(course_id)
        ON DELETE CASCADE,
    grade VARCHAR(10),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE assignment (
    assignment_id SERIAL PRIMARY KEY,
    course_id INTEGER REFERENCES course(course_id)
        ON DELETE CASCADE,
    title VARCHAR(150) NOT NULL,
    deadline TIMESTAMP NOT NULL,
    total_mark INTEGER NOT NULL CHECK (total_mark > 0)
);


CREATE TABLE submission (
    submission_id SERIAL PRIMARY KEY,
    assignment_id INTEGER REFERENCES assignment(assignment_id)
        ON DELETE CASCADE,
    student_id INTEGER REFERENCES student(student_id)
        ON DELETE CASCADE,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    obtained_mark INTEGER CHECK (obtained_mark >= 0)
);
