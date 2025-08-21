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

