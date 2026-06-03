#INNER LOOP
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,age,occupation  # it doesnt work without this dem. cause sql doesnt know which fuckass id you talm bout
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#OUTER LOOP -> LEFT AND RIGHT
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#SELF JOIN
SELECT *
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id = emp2.employee_id
;

SELECT emp1.employee_id AS santa_id,
		emp1.first_name AS santa_first_name,
        emp1.last_name AS santa_last_name,
        emp2.employee_id AS emp_id,
		emp1.first_name AS emp_first_name,
        emp1.last_name AS emp_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

#Join multiple tables
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.employee_id = pd.department_id
;
