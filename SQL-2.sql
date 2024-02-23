----------------------------------------Customer table-------------------------------------

--CREATE TABLE Customer (ID CHAR(50),Customer_FName CHAR(50),Customer_Lname CHAR(50))

--INSERT INTO Customer VALUES (10001, 'John', 'Smith'),
     --  (10002, 'Dave', 'Franklin'),
     --  (10003, 'Febby', 'Johns'),
     --  (10004, 'Mary', 'Gibson'),
     --  (10005,'Glory','Anson')
--Select*from customer

----------------------------------Buying table-------------------------------------------------

--CREATE TABLE Buying (Customer_ID CHAR(50),Product_ID CHAR(50),Order_Time CHAR(50))

--insert into Buying values('10001', '772', '2016/09/01'),
               -- ('10002', '774', '2015/08/02'),
				--('10003', '775', '2017/04/15'),
				--('10004', '712', '2016/09/28'),
				--('10005', '772', '2019/07/05')
--Select*from buying

---------------------------------------Product table----------------------------------------------
--CREATE TABLE Product (ID varchar(50),Name varchar(50),Address varchar(50))

--insert into Product values('772', 'Telephone', '22 Ave, Burwood'),
  --               ('774', 'Movie', '33 Flower st, Burwood'),
	--			 ('775', 'Software Pack', '2 Garden Rd, Geelong'),
		--		 ('712', 'Book', '20 Ave, Burwood')
--Select*from product


-------------------CONCATENATION------------
--SELECT ID, CONCAT (Customer_FName, ' ', Customer_Lname) AS FullName FROM Customer

-------------------BUYING DEATIALS-------------
--SELECT Product_ID, Count(Product_id) AS TotalProductId FROM Buying GROUP BY Product_ID;

------------------Left Join--------------------
--SELECT c.ID, c.Customer_FName, c.Customer_Lname, b.Customer_ID, b.Product_ID, b.Order_Time from Customer c LEFT JOIN Buying b ON c.ID = b.Customer_ID

-----------------------------3 records-----------------
--Select * from customer limit 3

-----------------------------10003 t0 10005-----------------
--SELECT * FROM Buying WHERE CUSTOMER_ID BETWEEN '10003' AND '10005'

---------------------------------DESN ORDER----------------------
--SELECT * FROM Product ORDER BY ID DESC

---------------------------------------------------UNION --------------------------------------------
--SELECT Customer_ID, Product_ID, Order_Time FROM Buying
--UNION
--SELECT ID, Name, Address FROM Product
-------------------------------------------------Dave and Mary ---------------------------------------

--SELECT * FROM Customer WHERE Customer_FName IN ('Dave', 'Mary')

-----------------------------------------unique constraints------------------------------------------------
--ALTER TABLE Customer ADD CONSTRAINT CustomerName UNIQUE (Customer_FName, Customer_Lname);
 --select * from customer







---------------------------------------------------------------SECOND ------------------------------------------

--CREATE TABLE imarticus_student (stud_id INT PRIMARY KEY,stud_name VARCHAR(50),Qualification varchar(10),email varchar(20),contact bigint,course_id int, Date_of_joining date)
--select * from imarticus_student

--insert into imarticus_student values (1,'Fathima','MCA','fathima@gmail.com',9876543210,1,'2024-02-12'),
--(2,'Raveena','BSc','raveena@gmail.com',8776543219,2,'2024-02-20'),
--(3,'Vinoth','MSc','vinoth@gmail.com',8776543210,1,'2024-01-17'),
--(4,'Tarun','BCom','tarun@gmail.com',6778976543,3,'2023-09-24'),
--(5,'Rajesh','BCom','rajesh@gmail.com',8779023456,3,'2023-08-17'),
--(6,'Kalyani','BSc','kalyani@gmail.com',7889012345,2,'2023-10-23'),
--(7,'Hemanth','MSc','hemanth@gmail.com',8776543210,1,'2023-11-27')
--select * from imarticus_student


--CREATE TABLE Course (course_id INT PRIMARY KEY,Course_name VARCHAR(50),Fees bigint,Duration varchar)

--INSERT INTO Course VALUES (1, 'FSD', 80000, '6 months'),
  --     (2, 'PGA', 125000, '9 months'),
    --   (3, 'Cibop', 90000, '6 months'),
	  --  (4, 'Digital marketing', 85000, '4 months')
		
--select * from course

-----------------------------MAXIMUM FEES----------------------------
--SELECT MAX(Fees) AS MaxFees FROM Course

---------------------------------TOTAL FEES---------------------------

--SELECT SUM(Fees) AS TotalFees FROM Course

-----------------------------FSD STUDENTS--------------------------------
--SELECT std.stud_id, std.stud_name, c.Fees, c.Duration 
--FROM imarticus_student std
--JOIN Course c ON std.course_id = c.course_id
--WHERE c.course_name = 'FSD'

--------------------------------FSD AND PGA------------------------

--SELECT std.stud_id, std.stud_name, c.Fees, c.Duration 
--FROM imarticus_student std
--JOIN Course c ON std.course_id = c.course_id
--WHERE c.course_name IN ('PGA','FSD')

----------------------------------DISPLAY DETAILS------------------------
--SELECT std.*, c.course_id, c.course_name
--FROM imarticus_student std
--JOIN Course c ON std.course_id = c.course_id

-----------------------------------4 to 7 ----------------------------------
--SELECT * FROM imarticus_student ORDER BY stud_id OFFSET 3 LIMIT 4
--------------------------------------combaine table---------------------------
--SELECT std.*, c.* FROM imarticus_student std
--JOIN course c ON std.course_id = c.course_id
-------------------------------2023-10-11 to 2024-02-23-------------------------

--SELECT * FROM imarticus_student
--WHERE date_Of_joining BETWEEN '2023-10-11' AND '2024-02-23'

-------------------------------START  R------------------------------------

--SELECT * FROM imarticus_student WHERE stud_name LIKE 'R%'
