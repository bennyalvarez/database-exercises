USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;


SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;


#SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name= LIKE'E%' OR last;




SELECT last_name FROM employees WHERE last_name LIKE '%q%' ORDER BY;

SELECT * FROM employees WHERE last_name LIKE '%q%';