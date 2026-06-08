SELECT first_name,last_name,age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Unc'
    WHEN age >= 60 THEN 'Good Night'
    END AS age_bracket
FROM employee_demographics
;


#Scenario: Pay increse and bonus
#			<50000 = 5%
#			>50000 = 7%
#			Finance = 10%

SELECT first_name,last_name,salary,
	CASE
		WHEN salary < 50000 THEN salary * 1.05
		WHEN salary > 50000 THEN salary * 1.07
	END AS New_salary,
	CASE 
		WHEN dept_id = 6 THEN salary * 1.10
	END AS Bonus
FROM employee_salary;

#Notice that the employee with salary -= 50000 aint given shit


    