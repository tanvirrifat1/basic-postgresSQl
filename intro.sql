-- CREATE TABLE

--     student(

--         student_id INT,

--         first_name VARCHAR(50),

--         last_name VARCHAR(50),

--         cgpa NUMERIC(1, 2)

--     )

-- updated the table

-- ALTER TABLE student RENAME TO learners

-- delete TABLE

-- DROP TABLE learners

CREATE TABLE
    user2(
        users_id SERIAL,
        userName VARCHAR(250) UNIQUE NOT NULL,
        email VARCHAR(250) UNIQUE NOT NULL,
        PRIMARY KEY (users_id, userName),
        ages INT DEFAULT 18
    );

-- INSERT INTO

-- user2 (users_id, userName, email, ages)

-- VALUES (1, 'rifat', 'rif@gmial.com', 21)

-- ALTER TABLE user2 ADD COLUMN password VARCHAR(250) not NULL;

-- SELECT * from user2 ;

-- Department table

INSERT into Department VALUES(1,'it');

SELECT * from Department;

CREATE table
    Department(
        deptID serial PRIMARY KEY,
        deptName VARCHAR(500)
    );

-- Employee Table

CREATE table
    Employee(
        empID serial PRIMARY KEY,
        empName VARCHAR(50) NOT NULL,
        departmentID INT,
        constraint fk_constraint_dept Foreign Key (departmentID) REFERENCES Department (deptID)
    );

-- create course TABLE

CREATE table
    courses(
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(255) not NULL,
        description VARCHAR (2500),
        publish_date DATE
    );

INSERT INTO
    courses (
        course_name,
        description,
        publish_date
    )
VALUES (
        'postgreSQL for developers',
        'a complete web development course',
        '2023-1-5'
    ), (
        'postgreSQL for developers',
        'a complete web development course',
        NULL
    ), (
        'postgreSQL for developers',
        NULL,
        NULL
    ), (
        'Mongoose for developers',
        'a complete web development course',
        '2023-12-5'
    );

-- update database row

UPDATE courses
set
    description = 'nice course you can take it'
WHERE course_id = 3;

--delete table row

DELETE from courses WHERE course_id= 2;

--

CREATE TABLE
    if not exists departments(
        deptID SERIAL PRIMARY KEY,
        name text not null
    );

CREATE Table
    if not exists employees(
        empID SERIAL PRIMARY KEY,
        name text not null,
        email text not null,
        salary INTEGER NOT NULL,
        joining_date date not null,
        deptID INTEGER not NULL,
        CONSTRAINT fk_deptID Foreign Key (deptID) REFERENCES departments(deptID)
    );

SELECT * from departments ;

SELECT * from employees ;