--ต้องการข้อมูลของพนังงานทั้งหมด
Select * from Employees
--รหัสพนังงานชื่อนามสุกลพนังงานทุกคน
Select EmployeeID,FirstName,LastName from Employees
--พนังงานที่อยู่เมื่อง london
Select *from Employees where City = 'london'

Select City, Country FROM Customers

Select DISTINCT City, Country FROM Customers

SELECT * FROM Products WHERE Unitprice > 200
--แสดงข้อมูลลูกค้าที่อยู่ในประเทศ USAหรือ ในเมือง Vancouver
SELECT *FROM Customers WHERE Country = 'USA' OR City = 'Vancouver'
--แสดงข้อมูลสินค้าที่มีราคาตั้งแต่ 50 $ ขึ้นไปและจำนวนคงเหลือน้อยกว่า 20 ชิ้น
SELECT * FROM Products WHERE UnitPrice >= 50 AND UnitsInStock < 20

--แสดงข้อมูลสินค้าที่มีจำนวนคงเหลือต่ำกว่า20
--หรือ มีจำนวนคงเหลือน้อยกว่าระดับการสั่งซื้อ
SELECT * FROM Products where UnitsInStock <20 or UnitsInStock <= ReorderLevel
--แสดงข้อมูลสินค้าที่มีราคาตั้งแต่ 50-100 บาท
SELECT * FROM Products WHERE UnitPrice BETWEEN 50 AND 100
SELECT * FROM Products WHERE UnitPrice >= 50 AND UnitPrice<=100

--แสดงข้อมูลลูกค้าที่อยู่ในประเทศ Brazil, Argentina, Mexico
SELECT * FROM Customers WHERE Country IN ('Brazil','Argentina','Mexico');
SELECT * FROM Customers WHERE Country = 'Brazil' or Country = 'Argentina' or Country = 'Mexico'
--แสดงข้อมูลพนักงานมีชื่อขึ้นต้นด้วยตัวอักษร N
SELECT * FROM Employees WHERE FirstName LIKE 'N%'
--ต้องการข้อมูลลูกค้าที่ขึ้นต้นด้วย A
SELECT * FROM Customers where CompanyName LIKE 'A'
--ต้องการข้อมูลลูกค้าที่ขึ้นต้นด้วย Y
SELECT *Select * FROM Customers where CompanyName LIKE 'Y'
--ต้องการชื่อ นามสกุล พนักงานที่มีชื่อตัวประกอบด้วยตัวอักษร AN
SELECT firstname, lastname FROM Employees where FirstName LIKE '%an%'
--ต้องการชื่อบริษัทลูกค้าที่มีตัวอักษรตัวที่2เป็นa
SELECT companyName FROM customers WHERE CompanyName LIKE 'A'
--แสดงข้อมูลรหัสสินค้า, ชื่อสินค้า และราคาโดยเรียงลeดับผลลัพธ์จากราคาสูงที่สุดไปต่ำที่สุด
SELECT ProductID,ProductName,UnitPrice FROM Products ORDER BY UnitPrice 

SELECT CategoryID, ProductName, UnitPrice FROM Products ORDER BY CategoryID ASC , UnitPrice DESC

--ต้องการชื่อและราคาสินค้าในสต๊อกสูงที่สุด 10 อันดับแรก
SELECT top 10 productName, Unitprice, UnitsInStock FROM Products ORDER BY UnitsInStock DESC