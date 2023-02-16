CREATE DATABASE IF NOT EXISTS Company;
USE Company;

CREATE TABLE Employees(
   emp_id INT PRIMARY KEY AUTO_INCREMENT,
   emp_name VARCHAR(30) NOT NULL,
   gender VARCHAR(30) NOT NULL,
   department VARCHAR(30) NOT NULL
);

INSERT INTO employees(emp_name,gender,department)
VALUES('X','Female','Finance'),
      ('Y','Male','IT'),
      ('Z','Male','HR'),
      ('W','Female','IT');
      
SELECT * FROM employees;

SELECT department AS Department,
       count(case gender when 'male' then 1 end) as 'Num of male',
       count(case gender when 'female' then 1 end) as 'Num of female'
       from employees
group by department
order by department;

