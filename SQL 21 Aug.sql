-- 1.
Select CategoryName, PRODUCTName, Unitprice
from products as p, categories as c where p.CategoryID=c.CategoryID
-- 2. 
Select CategoryName, PRODUCTName, Unitprice
from products as p join categories as c on p.CategoryID=c.CategoryID
-- 3. ต้องการแสดงเฉพาะ ประเภทสินค้า
Select CategoryName, PRODUCTName, Unitprice
from products as p, categories as c 
where p.CategoryID=c.CategoryID
and CategoryName = 'seafood'
-- 3.(2)
Select CategoryName, PRODUCTName, Unitprice
from products as p join categories as c 
on p.CategoryID=c.CategoryID
where CategoryName ='seafood'
-- 4. (Cartesian Product)
select companyname, orderid
from Orders, shippers 
where shippers.shipperid = orders.shipvia
--(Join Operator)
select companyname, orderid
from Orders join shippers 
on shippers.shipperid = orders.shipvia

select companyname, orderid
from Orders, shippers 
where shippers.shipperid = orders.shipvia
and 

--  ต้องการรหัสสินค้า ชื่อสินค้า บริษัทผู้จำหน่าย ประเทศ
select p.ProductID, p.ProductName, s.CompanyName, s.Country
from Products join Suppliers
on Products.SupplierID=Suppliers.SupplierID
where Country in ('usa' 'uk')
-- ต้องการรหัสพนักงาน ชื่อพนักงาน รหัสใบสั่งซื้อสินค้าที่เกี่ยวข้อง เรียงตามลำดับรหัสพนักงาน
SELECT e.EmployeeID, e.FirstName, o.OrderID
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
ORDER BY e.EmployeeID;
--
select o.OrderID เลขใบสั่งซื้อ, c.CompanyName ลูกค้า, e.FirstName พนักงาน, o.ShipAddress ส่งไปที่
from Orders o 
join Customers C on o.CustomerID=C.CustomerID
join Employees e on o.EmployeeID=e.EmployeeID

select * 
from Employees e 
join orders o on e.EmployeeID = o.

-- ต้องการชื่อบริษัทขนส่ง และจำนวนใบสั่งซื้อที่เกี่ยวข้อง
select s.CompanyName, count(*) จำนวนOrders 
from Shippers s join Orders o
on s.ShipperID = o.ShipVia
group by s.CompanyName
order by 2 desc
-- ต้องการรหัสสินค้า ชื่อสินค้า และจำนวนทั้งหมดที่ขายได้
SELECT 
    p.ProductID, 
    p.ProductName, 
    SUM(od.Quantity) AS จำนวนที่ขายได้
FROM Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName;
-- ต้องการ รหัสสินค้า ชื่อสินค้า ที่ nancy ขายได้ทั้งหมด เรียงตามลำดับรหัสสินค้า
select distinct p.ProductID, p.ProductName
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
                 join [Order Details] od on o.OrderID = od.OrderID
                 join Products p on p.ProductID = od.ProductID
where e.FirstName = 'Nancy'
order by ProductID

