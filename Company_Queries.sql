SELECT * FROM employee;

SELECT * FROM works_with;

-- Find all employee and order by Salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employee and order by sex and then name

SELECT *
FROM employee
ORDER BY sex,first_name,last_name;

-- Select the first 5 employee

SELECT *
FROM employee
LIMIT 5;

-- Select the first name and last name of all employee

SELECT first_name, last_name
FROM employee;

-- Find the forename and surname of all employee | An Easy way to change the name of the column for a Single output

SELECT first_name AS forename, last_name as surname
FROM employee;

-- Find out all the different gender

SELECT DISTINCT sex
FROM employee;

-- Find out the different branch ID 

SELECT DISTINCT branch_id
FROM employee;

-- Find the number of Employees

SELECT COUNT(emp_id)
FROM employee;

-- Find the number of female employee born after 1970

SELECT COUNT(emp_id)
FROM employee
WHERE sex='F' AND birth_day > '1971-01-01';

-- Find the average of all employee's salaries

SELECT AVG(salary)
FROM employee;

-- Find the average of all employee's salaries where sex is male

SELECT AVG(salary)
FROM employee
WHERE sex='M';

-- Find the sum of all employee's salaries

SELECT SUM(salary)
FROM employee;

-- Find out how many males and females are there

SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman

SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Find the total Spending by a client 

SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id
ORDER BY SUM(total_sales) DESC;
















