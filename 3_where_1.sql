select * from Products
where UnitsInStock > 10 and UnitsInStock < 20

select * from Products
where UnitPrice > 20 and UnitPrice < 50

-- between and => de�er aral��� belirlemek i�in kullan�l�r
select * from Products
where UnitsInStock between 10 and 20

select * from Products
where UnitPrice between 20 and 50

-- is null ve is not null => null olan veya olmayan kay�tlar� bulmak i�in kullan�l�r
select * from Customers
where Fax is null

select * from Customers
where Fax is not null

-- like operat�r� => alanlarda search yapmak i�in kullan�l�r
select * from Products
where ProductName  like '%ai%' -- productName'da ai ge�enler

select * from Products
where ProductName  like '%ch%' -- productName'da ch ge�enler

select * from Products
where ProductName like 'c%' -- c ile ba�layanlar

select * from Products
where ProductName like '%e' -- c ile ba�layanlar