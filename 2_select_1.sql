
use Northwind

--categoriler tablosundaki kay�tlar� b�t�n alanlar� ile �ekelim...
select * from Categories

--kategoriler tablosundaki CategoryName ve Description alanlar�n� �ekelim

--Description bir sql ifadesi oldu�u i�in select ve from ile ayn� renkte g�r�n�r. ancak �al��t�rd���m�zda categories tablosunun alan� gibi g�r�n�r...
select CategoryName,Description from Categories

--products tablosundaki kay�tlar� b�t�n alanlar� ile �ekelim..
select  * from Products

--products tablosundaki kay�tlar�n UrunAdi,Kategorisi,Fiyat ve Stok bilgilerini �ekelim
select ProductName,
	CategoryID,
	UnitPrice,
	UnitsInStock
from Products



-- �al��anlar tablosundaki �al��anlar�on b�t�n bilgilerini �ekelim...
select * from Employees


--- �al��anlar tablosundaki Title,FirstName ve LastName alanlar�n� �ekelim...
select Title, FirstName, LastName from Employees

------ table aliases (as ifadesi ) tablonu�n alanlar�n� se�mek i�in filtreleme kolayl��� sa�lar
select e.Title,e.FirstName,e.LastName from Employees as e

select c.CompanyName,c.ContactTitle,c.Phone from Customers as c


-- column aliases (as ifadesi) select ifadesi ile gelen resultta tablonun alan�na takma isim verilir.. Alanla resultta ge�ici isim verir.. �ok s�k kullan�r�z...
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
