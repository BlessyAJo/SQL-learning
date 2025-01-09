# Group By is similar to distict
SELECT * 
FROM employee_demographics;
# aggregate fns- avg(),max(), min(), count()
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics 
GROUP BY gender;
SELECT *
FROM employee_salary 
;
SELECT occupation, salary
FROM employee_salary 
GROUP BY occupation, salary;

#order by
SELECT *
FROM employee_demographics 
ORDER BY first_name DESC;
# can't use order by age, gender cause it wonder order gender correctly
SELECT *
FROM employee_demographics 
ORDER BY gender, age;