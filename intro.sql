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
    )