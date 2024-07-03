--CREATE DATABASE student;
SHOW DATABASES;

USE student;

CREATE TABLE
    IF NOT EXISTS student (
        student_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(20) NOT NULL,
        major VARCHAR(20) DEFAULT 'UNDEFINED'
    );

SHOW TABLES;

INSERT INTO
    student
VALUES
    (1, 'Jack', 'Biology');

INSERT INTO
    student (name)
VALUES
    ('Kate');

INSERT INTO
    student (name, major)
VALUES
    ('Youcef', 'Computer Science');

INSERT INTO
    student (name, major)
VALUES
    ('Alice', 'Physics');

INSERT INTO
    student (name)
VALUES
    ('Bob');

INSERT INTO
    student (name, major)
VALUES
    ('Charlie', 'Mathematics');

INSERT INTO
    student (name, major)
VALUES
    ('David', 'Chemistry');

INSERT INTO
    student (name)
VALUES
    ('Eve');

INSERT INTO
    student (name, major)
VALUES
    ('Frank', 'Engineering');

-- UPDATE DATABASES --
UPDATE student
SET
    major = 'CS'
WHERE
    major = 'Computer Science';

DELETE FROM student
WHERE
    major = 'UNDEFINED';

UPDATE student
SET
    major = 'undecided',
    name = 'student'
WHERE
    student_id = 1;

----------------- BASIC QUERIES ---------------------- 
SELECT
    *
FROM
    student
ORDER BY
    student_id,
    major;

SELECT
    *
FROM
    student
LIMIT
    2;

SELECT * FROM student WHERE name IN ('Youcef', 'Claire', 'Alice', 'DAVID');

SELECT
    *
FROM
    student;

-- test a voir 
--DROP TABLE student;