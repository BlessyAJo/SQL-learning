-- limit and aliasing
-- limiting the table to top 3 rows
SELECT *
FROM employee_demographics
LIMIT 3
;
SELECT *
FROM employee_demographics
order by age DESC
LIMIT 3
;
-- 3(position), 2(row) shows only 2 rows after 3rd position
SELECT *
FROM employee_demographics
order by age DESC
LIMIT 3, 2
;

-- aliasing (change name of column) used in joins also
-- used as AS avg_age/ avg_age, then reuse in HAVING
SELECT gender, avg(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age >30
;