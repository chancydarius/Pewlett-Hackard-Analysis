-- Use Dictinct with Orderby to remove duplicate rows
-- DROP TABLE retirement_titles;
SELECT 
em.emp_no,
em.first_name,
em.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees AS em
INNER JOIN titles AS ti 
ON (em.emp_no = ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;
SELECT * FROM retirement_titles;

-- DROP TABLE unique_titles;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;
SELECT * FROM unique_titles;

-- DROP TABLE retiring_titles;
SELECT COUNT (ut.title),
ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title 
ORDER BY count DESC;
SELECT * FROM retiring_titles;

-- DROP TABLE mentorship_eligibility;
SELECT DISTINCT ON (em.emp_no) 
em.emp_no,
em.first_name,
em.last_name,
em.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees AS em
LEFT JOIN dept_emp AS de
ON (em.emp_no = de.emp_no)
LEFT JOIN titles AS ti
ON (em.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no;
SELECT * FROM mentorship_eligibility;