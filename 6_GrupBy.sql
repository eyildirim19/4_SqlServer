-- distinct => resultta tekra eden satýrlarý elimine etmek için kullanýlýr
select distinct Country from Customers
select distinct CategoryID from Products
select distinct SupplierID from Products
-- group by => resultta verileri gruplamak için kullanýlýr
select Country from Customers
group by Country

select FirstName,LastName,Title,Country from Employees
--sadece grouplanan alanlar select ile seçilebilir...
-- sonuç olarak gelen result (satýr bazlý tablo olarak düþünebilirsiniz). c# dilinde bu alt tablolarý açabiliyoruz...
--Aggregate functionlar group by ifadeleri ile kullanýlabilir. Bu fonkisyonlar alt tablolar üzrinde iþlem yaparlar
select Country from Employees
group by Country

-- Count =>  tablodaki bütün satýrlarý sayar.. 
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