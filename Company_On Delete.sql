-- ON DELETE SET NULL and ON DELETE CASCADE

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- DELETE FROM employee
-- WHERE emp_id=102;

-- This will delete the row of Michael Scott and set value of mgr_id=102 as 'NULL' in the branch table.

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

-- DELETE FROM branch
-- WHERE branch_id=2;

-- This will get rid of all the rows where the branch_id=2. On Delete Cascade is usefull when the row affected as Primary Key
-- it cannot be set NULL.



