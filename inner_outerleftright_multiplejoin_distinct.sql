-- Joins
SELECT * 
FROM employee_demographics;
SELECT * 
FROM employee_salary;
-- inner join
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;
SELECT dem.employee_id, dem.first_name, occupation
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;

-- outer joins mainly left(takes everything from left but matches and returns matches from right table)  and right(takes everything from right and matches to left and add null if no matches) outer joins
SELECT *
FROM employee_demographics dem
LEFT JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;
SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;

-- self join(tie the table to itself)
-- to assign secret santa to each employee we can assign employee id 1 to employee id 2, 2 to 3... for that just add 1 
SELECT sal1.employee_id AS emp_santa,
sal1.first_name AS first_name_santa, 
sal1.last_name AS last_name_santa,
sal2.employee_id AS first_name_emp,
sal2.first_name AS first_name_emp,
sal2.last_name AS first_name_emp
FROM employee_salary sal1
JOIN employee_salary sal2
ON  sal1.employee_id +1 = sal2.employee_id
;

-- joining multiple tables
select * 
from parks_departments;

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments dep
ON sal.dept_id = dep.department_id
;
SELECT DISTINCT gender
FROM employee_demographics; 