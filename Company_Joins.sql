-- JOINS
USE Company_Database;
-- Add the extra branch
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

SELECT * FROM branch;
SELECT * FROM employee;

SELECT employee.emp_id, employee.first_name,branch.branch_name
FROM employee
JOIN branch				-- There are in total 4 ways to Join: LEFT JOIN / RIGHT JOIN / INNER JOIN or JOIN / FULL OUTER JOIN
ON employee.emp_id = branch.mgr_id;