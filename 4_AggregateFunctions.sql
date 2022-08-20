
--�r�nlerin toplam stoklar�n� toplayal�m...

/*
	Aggregate functions => alanlarda toplama,min,max,count, ortalama gibi de�erleri bulmak ii�in kullan�l�r.. bu fonksiyonlar geriye tek sat�r tek s�tun d�nerler
*/
select 
 SUM(UnitsInStock)
from Products

select 
 SUM(UnitsInStock) as ToplamStok
from Products

select MAX(UnitsInStock) 
from Products

select 
 MIN(UnitsInStock)
from Products
--where UnitsInStock != 0

select 
	AVG(UnitsInStock)
from Products

-- Count => sat�r say�s�n� d�ner
select COUNT(*) from Products

select COUNT(*) from Customers

-- e�er alan belirtirseniz null olmayan sat�rlar� sayar. e�er * derseniz b�t�n sat�rlar� sayar...
select COUNT(Fax) from Customers