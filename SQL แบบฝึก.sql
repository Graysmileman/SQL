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
select *
from Products where Discontinued = 0

-- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100 
select ProductID, ProductName, UnitPrice 
from Products where UnitPrice>100

-- 5. รหัสสินค้า และราคาของยางลบ
select productid, unitprice
from Products where ProductName='ยางลบ'

-- 6. หมายเลขใบเสร็จ วันที่ และ ราคา ของใบเสร็จที่ออกก่อนที่วันที่ 15 ก.พ.




-- 7.รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งเเต่ 400 ขึ้นไป
select productid, productname
from Products where UnitsInStock >400

-- 8.รหัสสินค้า ชื่อสินค้า ราคา และจำนวนคงเหลือ ของเเชม,แป้งเด็ก,ดินสอ,ยางลบ
select productid, productname, unitsinstock
from Products where productname In ('แชมพู', 'แป้งเด็ก', 'ดินสอ',)