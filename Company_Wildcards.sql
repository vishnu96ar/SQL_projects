-- Wildcards

-- Find any client who is in LLC

SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch supplier who are in Label Business

SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Labels%';

-- Find any employee born in October

SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- Find any client who are in School

SELECT *
FROM client
WHERE client_name LIKE '%school%';





