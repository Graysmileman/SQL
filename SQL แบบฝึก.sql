--Ẻ��֡�Ѵ SQL ��ҹ������ Minimart
select * 
from Products
-- 1. �Թ��ҷ�����Ҥ� 15 �ҷ 
select * 
from Products where UnitPrice =15

-- 2. �Թ��ҷ���ըӹǹ��������ʵ�͡��ӡ��� 250
select * 
from products where UnitsInStock < 250

-- 3.�����Թ��� �����Թ��ҷ����ԡ��˹��������
select *
from Products where Discontinued = 0

-- 4. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�����Ҥ��ҡ���� 100 
select ProductID, ProductName, UnitPrice 
from Products where UnitPrice>100

-- 5. �����Թ��� ����ҤҢͧ�ҧź
select productid, unitprice
from Products where ProductName='�ҧź'

-- 6. �����Ţ����� �ѹ��� ��� �Ҥ� �ͧ����稷���͡��͹����ѹ��� 15 �.�.




-- 7.�����Թ��� �����Թ��� ����ըӹǹ������͵����� 400 ����
select productid, productname
from Products where UnitsInStock >400

-- 8.�����Թ��� �����Թ��� �Ҥ� ��Шӹǹ������� �ͧ���,����,�Թ��,�ҧź
select productid, productname, unitsinstock
from Products where productname In ('����', '����', '�Թ��',)