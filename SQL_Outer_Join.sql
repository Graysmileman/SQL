Select * from Products
Select * from Categories
Select * from Receipts
Select * from Details
Select * from Employees

---------------
-- Cross join
Select * 
from Products, Categories
where Products.CategoryID = Categories.CategoryID

-------------------------------------------
-- Outer join
--Left Outer join
-- แสดงรหัสหมวดหมู่สินค้า ชื่อหมวดหมู่สินค้า ชื่อสินค้า
Select  C.CategoryID, CategoryName, ProductName 
from Categories c Left outer join Products p
on c.CategoryID = p.CategoryID
order by CategoryID
-- แสดงชื่อพนังงาน และแสดงจำนวนใบเสร็จ ที่เกี่ยวข้อง
Select FirstName, count(r.ReceiptID) จำนวนใบเสร็จ
from Employees e left outer join Receipts r 
on e.EmployeeID = r.EmployeeID
Group by FirstName
--แสดง ชื่อสินค้า และจำนวนสินค้าที่ขายไปแล้ว products, details
Select ProductName, sum(Quantity) จำนวนยที่ขายได้
from Products p left outer join Details d
on p.ProductID = d.ProductID
Group by ProductName
--Right outer join

-- Full outer join
