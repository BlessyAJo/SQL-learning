#having and where, if we use aggregate fn in WHERE when using GROUP BY we'll get error as AVG() fn executes only after GROUP BY so WHERE won't work before GROUP BY
SELECT gender, avg(age)
FROM employee_demographics 
GROUP BY gender
HAVING avg(age) > 40
;
# to use aggregate fn with WHERE and GROUP BY, HAVING should be used after GROUP BY
SELECT occupation, avg(salary)
FROM employee_salary 
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING avg(salary) <= 70000
;