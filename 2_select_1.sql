
use Northwind

--categoriler tablosundaki kayýtlarý bütün alanlarý ile çekelim...
select * from Categories

--kategoriler tablosundaki CategoryName ve Description alanlarýný çekelim

--Description bir sql ifadesi olduðu için select ve from ile ayný renkte görünür. ancak çalýþtýrdýðýmýzda categories tablosunun alaný gibi görünür...
select CategoryName,Description from Categories

--products tablosundaki kayýtlarý bütün alanlarý ile çekelim..
select  * from Products

--products tablosundaki kayýtlarýn UrunAdi,Kategorisi,Fiyat ve Stok bilgilerini çekelim
select ProductName,
	CategoryID,
	UnitPrice,
	UnitsInStock
from Products



-- çalýþanlar tablosundaki çalýþanlarýon bütün bilgilerini çekelim...
select * from Employees


--- çalýþanlar tablosundaki Title,FirstName ve LastName alanlarýný çekelim...
select Title, FirstName, LastName from Employees

------ table aliases (as ifadesi ) tablonuýn alanlarýný seçmek için filtreleme kolaylýðý saðlar
select e.Title,e.FirstName,e.LastName from Employees as e

select c.CompanyName,c.ContactTitle,c.Phone from Customers as c


-- column aliases (as ifadesi) select ifadesi ile gelen resultta tablonun alanýna takma isim verilir.. Alanla resultta geçici isim verir.. Çok sýk kullanýrýz...
select e.Title,e.FirstName,e.LastName from Employees as e

select 
	e.Title as Unvan,
	e.FirstName as Adi,
	e.LastName as SoyAdi
from Employees as e

select 
	CompanyName as Sirket,
	ContactName as IlgiliKisi,
	ContactTitle as Unvani,
	Phone as TelNo
from Customers
