use Northwind

--order by => sýralama ifadesi. resultta verileri sýralamak için kullanýlýlýr. iki parametresi vardýr;
--asc (ascending) => artan
--desc (descending) => azalan
--eðer order byda sýralama ifadesi belirtilmezse default asc sýralama yapar...
select * from Products
order by UnitsInStock-- asc -- asc belirtilmezse default asc sýralar...

select * from Products
order by UnitsInStock desc

--where => kriter (filtre) belirlemek için kullanýlýr. 
select * from Products
where UnitsInStock < 10
order by UnitPrice desc

select * from Products
where UnitsInStock > 10

--and => ve operatörü...
select * from Products
where UnitsInStock > 0 and UnitsInStock < 10

select * from Products
where ProductName = 'chai'

select * from Products
where ProductName != 'chai'


select * from Customers
where Country = 'Germany' or Country = 'Canada' or Country = 'Spain'

-- in operatörü = > Eþitlik için kullanýlýr. Birden fazla eþitlemede tercih edilir. yukarýda sorgu yerine daha okunaklýdýr..
select * from Customers
where Country in ('Germany','Canada','Spain') 

select * from Customers
where Country in ('Germany','Canada','Spain') and ContactTitle = 'Owner'

select * from Customers
where Country not in ('Germany','Canada','Spain')

select * from Products
where UnitsInStock in (10,20)