SELECT *
FROM employee_salary
WHERE salary> 50000
;
SELECT * 
FROM employee_demographics
WHERE gender = 'female'
;
SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;
# and or not -- logical operators
SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;
SELECT * 
FROM employee_demographics
WHERE (birth_date > '1985-01-01' AND age = 44) 
OR (gender = 'female')
;
#LIKE statement
# %(anything) and _(specific)
SELECT * 
FROM employee_demographics
WHERE gender LIKE 'Female' 
;
SELECT * 
FROM employee_demographics
WHERE last_name LIKE '%at%' 
;
# return exact underscore(2 used below) values and adding % brings whole value
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__%' 
;
SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1994%' 
;