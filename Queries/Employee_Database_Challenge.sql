--Creating table Retirement Titles
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.titles,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)emp_no,
first_name,
last_name,
titles
INTO unique_title
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no Asc, to_date DESC;


-- Count number of employees in each department
SELECT COUNT(u.emp_no) AS "no_employees",u.titles
INTO retiring_titles
FROM unique_title as u
GROUP BY u.titles
ORDER BY COUNT(emp_no) DESC;


-- Creating Table for Mentorship Eligibility
SELECT DISTINCT ON(e.emp_no)e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.titles
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


-- Creating table for Retiring Employees in each department
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
INTO retire_dept
FROM employees as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


-- Total number of employees retiring from each department
SELECT COUNT(red.emp_no) AS "No_employees",red.dept_name
INTO retiring_dept
FROM retire_dept as red
GROUP BY red.dept_name
ORDER BY COUNT(red.emp_no) DESC;


-- Employees eligible for mentorship in each department
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   d.dept_name
INTO mentors_dept
FROM mentorship_eligibility as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


-- Number of employees eligible for mentorship in each department
SELECT COUNT (emp_no) AS "no_employees",
		dept_name
INTO mentorship_dept
FROM mentors_dept
GROUP BY dept_name
ORDER BY COUNT(emp_no) DESC;

