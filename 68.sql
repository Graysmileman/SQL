select * from Employees
select EmployeeID, FirstName, LastName from Employees
select * from Employees where City = 'London'
select City, country from Customers
select distinct city, country from customers
select * from Products where UnitPrice > 200

select * from Customers where city='london' or city='vancouver'

select * from Customers where Country ='usa' or city='vancouver'
select * from Products where UnitPrice >=50 and UnitsInStock <20

--แสดงสินค้าที่มีจำนวนคงเหลือน้อยกว่า 20 
select * from Products
where UnitsInStock<20 or UnitsInStock <= ReorderLevel

select * from Products 
where UnitPrice BETWEEN 50 and 100
select * from Products
where UnitPrice >= 100 and UnitPrice <=150

select * from Customers
where Country in ('Brazil','Argentina','mexico')

select * from Customers
where Country = 'brazil'
or Country ='argentina'
or Country ='mexico'
--ต้องการข้อมูลลูกค้าชื่อลง ท้าย ด้วย Z 
select * from Employees
where FirstName LIKE '%Z'

--ต้องการชื่อ นามสกุล พนักงานที่มีชื่อประกอบด้วยอักษร 'an'\
select firstname, lastname from Employees
where FirstName LIKE'%an%' 

--แสดงข้อมูลพนักงานที่มีชื่อประกอบด้วยตัวอักษร5 ตัว
select * from Employees
where FirstNameE'_____' 
--ต้องการชื่อบริษัทลูกค้าที่มีตัวอักษรตัวที่ 2 เป็น 'a'
select * from companyname from customers

--แสดงข้อมูลรหัสสินค้า ชื่อ สินค้า เเละราคา จากน้อยไปมาก เเละจากมากไปน้อย
select ProductID, ProductName, UnitPrice from Products
ORDER by UnitPrice DESC

select companyname, contactname from Customers
order by ContactName ASC 

--ต้องการชื่อ และราคาสินค้า  จำนวนคงเหลืิอ ที่มีจำนวนในสต๊อกสูงที่สุด 10 อันดับแรก
select  top 10 Productname, unitprice, unitsInstock from Products
ORDER by UnitsInStock DESC

--
SELECT CategoryID, PRODUCTname, unitprice from Products
ORDER by CategoryID ASC,UnitsInStock DESC
