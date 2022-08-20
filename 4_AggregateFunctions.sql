
--ürünlerin toplam stoklarýný toplayalým...

/*
	Aggregate functions => alanlarda toplama,min,max,count, ortalama gibi deðerleri bulmak iiçin kullanýlýr.. bu fonksiyonlar geriye tek satýr tek sütun dönerler
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

-- Count => satýr sayýsýný döner
select COUNT(*) from Products

select COUNT(*) from Customers

-- eðer alan belirtirseniz null olmayan satýrlarý sayar. eðer * derseniz bütün satýrlarý sayar...
select COUNT(Fax) from Customers