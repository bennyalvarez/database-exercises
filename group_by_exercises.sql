USE employees;

# n your script, use DISTINCT to find the unique titles in the titles table.
# Your results should look like:
SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
# You should get 846 rows.

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(*), last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
# Your results should be:
SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;