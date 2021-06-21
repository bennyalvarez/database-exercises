USE employees;

SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT last_name FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE '%q%';
#
# # Part Two
#
# #1. Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# SELECT *
# FROM employees
# WHERE first_name = 'Irena'
#    OR first_name = 'Vidya'
#    OR first_name = 'Maya';
#
# # 2. Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
# SELECT *
# FROM employees
# WHERE (first_name = 'Irena'
#    OR first_name = 'Vidya'
#    OR first_name = 'Maya')
#     AND gender = 'M';
#
# # 3. Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# SELECT * FROM employees
# WHERE last_name LIKE 'E%'
#     OR last_name LIKE '%e';
#
# SELECT * FROM employees
# WHERE last_name LIKE 'E%'
#   AND last_name LIKE '%e';
#
#
#
# SELECT first_name, gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';
#
# SELECT first_name FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M';
#
# SELECT * FROM employees WHERE last_name LIKE 'E%e';
#
# SELECT * FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';
