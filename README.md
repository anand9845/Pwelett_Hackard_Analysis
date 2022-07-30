# Pwelett_Hackard_Analysis

DELIVERABLE 3

Overview
The purpose of this analysis was that the "silver tsunami" was coming, and as many employees reached their retirement age, we needed to analyse wether the company would be able to cope with the sudden retiring of all these experienced employees. So for this, we calculated the number of employees which are retiring whilst also calculating the number of employees who are eligible to participate in a mentorship program.

Results
Major results from the 2 deliverables are as follows:
-There are 90,398 employees who are of the retirement age
-43,636 of the employees at retirement age had the word 'Engineer' in their title (48.27%).
-40,499 of the employees at retirement age had the word 'Staff' in their title (44.8%).
-There is around 1 mentor for 48 vacancies. (1940 mentors and 90,368 employees at retirement age).

Summary
1) There will be 90,398 roles which need to be filled as the "silver tsunami" begins to make an impact.
2) There are not enough qualified retirement ready employees, only 1940 employees are eligible to participate in a mentorship program.

Additional Queries

SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;

this gives us the employees with their most recent title, making it easier to find out exactly which department/title is losing how many members.
