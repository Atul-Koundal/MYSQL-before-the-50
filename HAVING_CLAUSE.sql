SELECT gender ,AVG(age)
from employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT gender ,AVG(age)
from employee_demographics
GROUP BY gender
# WHERE AVG(age) > 40  # This doesnt work on aggreggate fn level
;

SELECT occupation,AVG(salary)
from employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;