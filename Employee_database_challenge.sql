/*DELIVERABLE 1
first we create a Retirement Titles table which contains the titles of all employees born between 1st Jan 1952 and 31st Dec 1955
*/

SELECT e1.emp_no,
       e1.first_name,
       e1.last_name,
       t1.title,
       t1.from_date,
       t1.to_date
INTO retirement_titles
FROM employees as e1
INNER JOIN titles as t1
ON (e1.emp_no = t1.emp_no)
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e1.emp_no
/*SELECT* 
FROM retirement_titles*/

/* The result of this query is the retirement_titles.csv*/

/*the Once the table has been exported as a csv, another query is written to create a unique titles table, which contains employee details along with their most recent title
*/

SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;

/*The result of this query is the unique_titles.csv*/

/*Once this table has been exported as a csv, we write the final query which gives us a retiring titles table, which contains the title and count of that title as to how many employees are retiring*/

SELECT COUNT(unique.emp_no), 
unique.title
INTO retiring_titles
FROM unique_titles as unique
GROUP BY title 
ORDER BY COUNT(title) DESC;

/*the result of this query is the retiring_titles.csv*/

/*DELIVERABLE 2*/

/*this query creates a table mentorship eligibility for all current employees born between 1st Jan 1965 and 31st Dec 1965*/
SELECT DISTINCT ON(e1.emp_no) 
e1.emp_no, 
e1.first_name, 
e1.last_name, 
e1.birth_date,
d1.from_date,
d1.to_date,
t1.title
INTO mentorship_eligibilty
FROM employees as e1
Left outer Join dept_emp as d1
ON (e1.emp_no = d1.emp_no)
Left outer Join titles as t1
ON (e1.emp_no = t1.emp_no)
WHERE (e1.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e1.emp_no;

/*the result of this query gives the mentorship_eligibily.csv*/




