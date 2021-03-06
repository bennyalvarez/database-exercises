USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

#Jordan's version

SELECT
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND to_date > CURDATE()
         JOIN departments AS d USING(dept_no)
ORDER BY dept_name;



# Find the current titles of employees currently working in the Customer Service department.
SELECT
    t.title,
    COUNT(de.emp_no) AS Count
FROM dept_emp AS de
         JOIN titles AS t ON de.emp_no = t.emp_no
    AND t.to_date > CURDATE()
    AND de.to_date > CURDATE()
         JOIN departments AS d ON d.dept_no = de.dept_no
    AND dept_name = 'Customer Service'
GROUP BY t.title;

