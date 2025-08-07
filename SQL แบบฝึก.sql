--แบบบฝึกหัด SQL ใช้ฐานข้อมูล Minimart
select * 
from Products
-- 1. สินค้าที่มีราคา 15 บาท 
select * 
from Products where UnitPrice =15

-- 2. สินค้าที่มีจำนวนคงเหลือในสต๊อกต่ำกว่า 250
select * 
from products where UnitsInStock < 250

-- 3.รหัสสินค้า ชื่อสินค้าที่เลิกจำหน่ายเเล้ว
select productID, productname	
from Products where Discontinued = 1

-- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100 
select ProductID, ProductName, UnitPrice 
from Products where UnitPrice>100

-- 5. รหัสสินค้า และราคาของยางลบ
select productid, unitprice
from Products where ProductName='ยางลบ'

-- 6. หมายเลขใบเสร็จ วันที่ และ ราคา ของใบเสร็จที่ออกก่อนที่วันที่ 15 ก.พ.
select ReceiptID, ReceiptDate,TotalCash from Receipts where ReceiptDate < '2013-02-15'

-- 7.รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งเเต่ 400 ขึ้นไป
select productid, productname,UnitsInStock
from Products where UnitsInStock >400

-- 8.รหัสสินค้า ชื่อสินค้า ราคา และจำนวนคงเหลือ ของเเชม,แป้งเด็ก,ดินสอ,ยางลบ
select productid, productname, unitsinstock
from Products where productname In ('แชมพู', 'แป้งเด็ก', 'ดินสอ','ยางลบ')

-- 9. รายละเอียดของสินค้าประเภทเครื่องเขียน
select  Description 
from Categories where CategoryName = 'เครื่องเขียน'

-- 10. รหัสประเภทสินค้า ชื่อประเภท และรายละเอียดของ สินค้าประเภทเครื่องสำอาง
select CategoryID, CategoryName,[Description] from Categories where CategoryName='เครื่องสำอาง'
-- 11.คำนำหน้า ชื่อ นามสกุล ของพนักงานที่เป็น Sale Representative
select Title, FirstName, LastName from Employees where Position='Sale representative'
-- 12. รหัสพนักงาน ชื่อพนักงาน ชื่อผู้ใช้ รหัสผ่าน ของพนักงานทุกคน
select Title+FirstName+space(1)+LastName EmpName, UserName, Password from Employees

-- 13. ชื่อผู้ใช้ และรหัสผ่านของพนักงานที่ชื่อก้องนิรันดร์
select UserName, Password from Employees where FirstName='ก้องนิรันดร์'

-- 14. รหัสพนักงานที่ออกใบเสร็จหมายเลข 3
select EmployeeID from Receipts where ReceiptID = 3
-- 15. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีรหัสประเภท 2, 4
select productID,ProductName,UnitPrice from Products where CategoryID in (2,4)
