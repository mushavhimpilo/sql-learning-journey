-- DAY 2 SQL PRACTICE

-- Create table
CREATE TABLE employee ( 
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER(10,2)
);

-- Insert data
INSERT ALL
  INTO employee VALUES (11, 'john', 'IT', 12000)
  INTO employee VALUES (12, 'sarah', 'HR', 8000)
  INTO employee VALUES (13, 'mike', 'IT', 15000)
  INTO employee VALUES (14, 'linda', 'FINANCE', 9000)
  INTO employee VALUES (15, 'david', 'IT', 7000)
  INTO employee VALUES (16, 'james', 'FINANCE', 11000)
SELECT * FROM dual;

-- Queries
SELECT * FROM employee;

SELECT name, salary
FROM employee
ORDER BY salary DESC;

SELECT department, AVG(salary)
FROM employee
GROUP BY department;

SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) > 9000;
