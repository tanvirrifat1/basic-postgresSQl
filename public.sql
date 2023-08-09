CREATE Table
    employees(
        emp_id SERIAL PRIMARY KEY,
        emp_name VARCHAR(100),
        emp_department VARCHAR(200),
        emp_salary DECIMAL(10, 2),
        emp_hire_date DATE
    );

INSERT INTO
    employees (
        emp_name,
        emp_department,
        emp_salary,
        emp_hire_date
    )
VALUES (
        'John Doe',
        'IT',
        60000.00,
        '2023-01-15'
    ), (
        'Jane Smith',
        'Marketing',
        55000.00,
        '2022-08-22'
    ), (
        'Michael Johnson',
        'HR',
        65000.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        25123.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        57484.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        879555.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        5415.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        65000.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        65000.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        65000.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        35691.00,
        '2021-05-10'
    ), (
        'Michael Johnson',
        'HR',
        65000.00,
        '2021-05-10'
    );

SELECT * from employees ;

SELECT * from employees ORDER BY emp_name DESC LIMIT 2 ;

SELECT emp_salary
FROM employees
ORDER BY emp_salary DESC
LIMIT 1
OFFSET 2;