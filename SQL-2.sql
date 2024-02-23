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

