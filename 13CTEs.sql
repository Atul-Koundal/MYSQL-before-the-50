WITH CTE_EXAMPLE AS 
(
SELECT gender,AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

## CTE can be only used immediately after 


## Multi CTE
WITH CTE_EXAMPLE AS 
(
SELECT employee_id,gender,birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
),
CTE_EXAMPLE2 AS(
SELECT employee_id,salary
FROM employee_salary sal
	WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_EXAMPLE2
	ON  CTE_Example.employee_id = CTE_EXAMPLE2.employee_id
;

##Another Representation
WITH CTE_EXAMPLE(Gender,AVG_SAL,MA_SAL,MIN_SAL,COUNT_SAL) AS 
(
SELECT gender,AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

