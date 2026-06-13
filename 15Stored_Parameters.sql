##Way to save the  sql code that can be user over and over again

SELECT *
FROM employee_salary
WHERE salary >= 50000;

USE parks_and_recreations;			## Not neccesary to do this 
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

##-----------------------------------------------
##Next thing that i will do will be wrong
##--------------------------------------------

CREATE PROCEDURE large_salaries2()
SELECT *
FROM employee_salary
WHERE salary >= 50000;		## A stored procedure is created upto this
SELECT *
FROM employee_salary
WHERE salary > 10000;		## This serve as a random querie

##------------------------------------------------------------------
## To silve this we use delimiter
##---------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;		
	SELECT *
	FROM employee_salary
	WHERE salary > 10000;	
END $$
DELIMITER ;

CALL large_salaries3();


##--------------------------------------------------------
## Perimeters can be passed to stored Procedures
##--------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE large_salaries4(p_employee_id INT)
BEGIN
	SELECT *
	FROM employee_salary
	WHERE employee_id = p_employee_id
    ;	
END $$
DELIMITER ;

CALL large_salaries4(1);



