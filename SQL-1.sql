--CREATE TABLE employee1 (emp_id INT PRIMARY KEY,first_name VARCHAR(40),last_name VARCHAR(40),birth_day DATE,sex VARCHAR(1),salary INT,super_id INT,branch_id INT)
--CREATE TABLE branch (branch_id INT PRIMARY KEY,branch_name VARCHAR(40),mgr_id INT,mgr_start_date DATE)
--CREATE TABLE branch_supplier (branch_id INT,supplier_name VARCHAR(40),supply_type VARCHAR(40),PRIMARY KEY(branch_id, supplier_name))
--CREATE TABLE client (client_id INT PRIMARY KEY,first_name VARCHAR(40),last_name VARCHAR(40),branch_id INT)
--CREATE TABLE works_with (emp_id INT,client_id INT,total_sales INT,product_id INT,PRIMARY KEY(emp_id, client_id))

--INSERT INTO employee1 VALUES(20, 'Finn', 'Müller', '1967-05-12', 'M', 85000, NULL, NULL)
--select * from employee1
--UPDATE employee1 SET branch_id = 1 WHERE emp_id=20
--INSERT INTO employee1 VALUES(21, 'Lucas', 'Schmidt', '1972-08-30', 'M', 200000, 20, 1)
--INSERT INTO employee1 VALUES(22, 'Jonas', 'Fischer', '1983-01-01', 'M', 65000, 22, 2)
--INSERT INTO employee1 VALUES(23, 'Ella', 'Weber', '1964-05-22', 'F', 170000, 22, 2),
                             --(24, 'Ida', 'Wagner', '1970-03-07', 'F', 90000, 22, 2),
							 --(25, 'Ben', 'Schneider', '1973-08-25', 'M', 72000, 22, 2)
--INSERT INTO employee1 VALUES(26, 'Oliver', 'Brown', '1989-03-02', 'M', 199000, 26, 3),							 
                           -- (27, 'Leonie', 'Williams', '1977-07-07', 'F', 80000, 26, 3),
							--(28, 'Lea', 'Zimmerman', '1983-12-05', 'F', 62000, 26, 3)
--select * from employee1	
--select * from branch
--INSERT INTO branch VALUES(1, 'Insurance', 20, '2022-02-06')
--(2, 'Account', 22, '2022-04-01'),(3, 'Energy', 26, '2019-02-24')
--select * from branch
--select * from branch_supplier
--INSERT INTO branch_supplier VALUES(1, 'S_Direkt', 'Insurance'),
--(1, 'Inshared', 'Insurance'),
--(2, 'Deutsche_Bank', 'Credit'),
--(2, 'Commerzbank', 'Credit'),
--(3, 'Ostrom', 'Renewable'),
--(3, 'E.On_Energy', 'Electricity')
--select * from branch_supplier
--select * from client
--INSERT INTO client VALUES(10, 'Daniel', 'Maier', 2),(11, 'Ella', 'Walter', 2),
                --          (12, 'Zhang', 'Wei', 1),(13, 'Ivan', 'Kirillov', 3),
				--		  (14, 'John', 'Smith', 3),(15, 'Dirk', 'Pelletr', 1),
				--		  (16, 'Tobias', 'Roth', 1),(27,'Leonie','Williams',1)
--select * from client
--select * from works_with
--INSERT INTO works_with VALUES(28, 14, 120000),(22, 15, 6000),(20, 15, 6000),(25, 16, 55000),(21, 11, 40000)
--select * from works_with

--UPDATE employee1
--SET salary = salary * 1.1 
--WHERE branch_id = 1 
--AND EXISTS (
   -- SELECT 1 FROM branch_supplier 
   -- WHERE branch_id = 1 AND supply_type = 'Insurance')
--select * from employee1
--INSERT INTO client (first_name,last_name) VALUES ('Zhang' , 'Wei') ON CONFLICT (first_name,last_name) DO UPDATE SET first_name = EXCLUDED.first_name || 'shan'
--select * from client

