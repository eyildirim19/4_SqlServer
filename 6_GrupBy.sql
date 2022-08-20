-- distinct => resultta tekra eden sat�rlar� elimine etmek i�in kullan�l�r
select distinct Country from Customers
select distinct CategoryID from Products
select distinct SupplierID from Products
-- group by => resultta verileri gruplamak i�in kullan�l�r
select Country from Customers
group by Country

select FirstName,LastName,Title,Country from Employees
--sadece grouplanan alanlar select ile se�ilebilir...
-- sonu� olarak gelen result (sat�r bazl� tablo olarak d���nebilirsiniz). c# dilinde bu alt tablolar� a�abiliyoruz...
--Aggregate functionlar group by ifadeleri ile kullan�labilir. Bu fonkisyonlar alt tablolar �zrinde i�lem yaparlar
select Country from Employees
group by Country

-- Count =>  tablodaki b�t�n sat�rlar� sayar.. 
-- Agg
select Country,COUNT(*) from Employees
group by Country

select  CategoryID,
		COUNT(*) as UrunAdeti,
		SUM(UnitsInStock) as ToplamStok,
		SUM(UnitPrice) as ToplamFiyat,
		AVG(UnitPrice) as OrtalamFiyat
from Products
group by CategoryID

select * from Products
where CategoryID = 1