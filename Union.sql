# unions- help combine rows from diferent/multiple tables. it also acts like DISTINCT only displaying unique values
SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;
-- UNION itself is treated as DISTINCT(UNION DISTINCT) but if need to get all rows you can add UNION ALL
-- showing highly paid employee with their age over 40
SELECT first_name, last_name, 'aged man' AS Label
FROM employee_demographics
WHERE age > 40 and gender ='Male'
UNION
SELECT first_name, last_name, 'aged lady' AS Label
FROM employee_demographics
WHERE age > 40 and gender ='Female'
UNION
SELECT first_name, last_name, 'Highly paid employee' AS Label
FROM employee_salary
where salary > 65000
ORDER BY first_name, last_name
;