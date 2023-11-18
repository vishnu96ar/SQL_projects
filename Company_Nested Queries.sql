-- Nested Queries

-- Find names of all employees who have sold over 30,000

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (

	SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000

);

-- Find all clients who are handles by the branch that Michael Scott manages
-- Assume you know Michael's ID

SELECT client.client_name 
FROM   client
WHERE  client.branch_id = 2;		-- Basic Cheatcode Method

-- The same result with Nested Queries
SELECT client.client_name 
FROM   client
WHERE  client.branch_id = (  -- instead of 'IN' we can also use '=' provided we are limiting our input to one

	SELECT branch.branch_id
    FROM branch
    WHERE mgr_id= 102
	LIMIT 1					-- so that in case Michael Scott manages more than one branch the input remains one
);



