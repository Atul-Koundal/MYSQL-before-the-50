##Basically Group By but dont roll everything in one row while grouping

##This is how the group by does the shit
SELECT gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
GROUP BY gender
;

##And this is the window function alternative
SELECT gender,AVG(salary) OVER (PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
;

##--------------------------------------------------------------------------------------
## What difference it makes???
SELECT dem.first_name,dem.last_name,gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
GROUP BY dem.first_name,dem.last_name,gender
; 

SELECT dem.first_name,dem.last_name,gender,AVG(salary) OVER (PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
;

##----------------------------------------------------------------------------------


SELECT dem.first_name,dem.last_name,gender,salary,
SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(),
ROW_NUMBER() OVER(PARTItION BY gender),
ROW_NUMBER() OVER(PARTItION BY gender ORDER BY salary DESC),
RANK() OVER(PARTItION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTItION BY gender ORDER BY salary DESC) AS denseRank
FROM employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
;
