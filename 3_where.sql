use Northwind

--order by => s�ralama ifadesi. resultta verileri s�ralamak i�in kullan�l�l�r. iki parametresi vard�r;
--asc (ascending) => artan
--desc (descending) => azalan
--e�er order byda s�ralama ifadesi belirtilmezse default asc s�ralama yapar...
select * from Products
order by UnitsInStock-- asc -- asc belirtilmezse default asc s�ralar...

select * from Products
order by UnitsInStock desc

--where => kriter (filtre) belirlemek i�in kullan�l�r. 
select * from Products
where UnitsInStock < 10
order by UnitPrice desc

select * from Products
where UnitsInStock > 10

--and => ve operat�r�...
select * from Products
where UnitsInStock > 0 and UnitsInStock < 10

select * from Products
where ProductName = 'chai'

select * from Products
where ProductName != 'chai'


select * from Customers
where Country = 'Germany' or Country = 'Canada' or Country = 'Spain'

-- in operat�r� = > E�itlik i�in kullan�l�r. Birden fazla e�itlemede tercih edilir. yukar�da sorgu yerine daha okunakl�d�r..
select * from Customers
where Country in ('Germany','Canada','Spain') 

select * from Customers
where Country in ('Germany','Canada','Spain') and ContactTitle = 'Owner'

select * from Customers
where Country not in ('Germany','Canada','Spain')

select * from Products
where UnitsInStock in (10,20)