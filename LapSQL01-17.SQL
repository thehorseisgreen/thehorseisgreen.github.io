--ต้องการข้อมูลของพนังงานทั้งหมด
Select * from Employees
--รหัสพนังงานชื่อนามสุกลพนังงานทุกคน
Select EmployeeID,FirstName,LastName from Employees
--พนังงานที่อยู่เมื่อง london
Select *from Employees where City = 'london'

Select City, Country FROM Customers

SELECT DISTINCT City, Country FROM Customers
