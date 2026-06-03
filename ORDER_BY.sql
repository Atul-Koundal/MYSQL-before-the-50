SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender,age;

SELECT * 
FROM employee_demographics
ORDER BY age,gender; # the gebder part is pointless if no common age

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;

