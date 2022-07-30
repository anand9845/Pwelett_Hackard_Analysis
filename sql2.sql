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