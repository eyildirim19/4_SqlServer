select * from Products
where UnitsInStock > 10 and UnitsInStock < 20

select * from Products
where UnitPrice > 20 and UnitPrice < 50

-- between and => deðer aralýðý belirlemek için kullanýlýr
select * from Products
where UnitsInStock between 10 and 20

select * from Products
where UnitPrice between 20 and 50

-- is null ve is not null => null olan veya olmayan kayýtlarý bulmak için kullanýlýr
select * from Customers
where Fax is null

select * from Customers
where Fax is not null

-- like operatörü => alanlarda search yapmak için kullanýlýr
select * from Products
where ProductName  like '%ai%' -- productName'da ai geçenler

select * from Products
where ProductName  like '%ch%' -- productName'da ch geçenler

select * from Products
where ProductName like 'c%' -- c ile baþlayanlar

select * from Products
where ProductName like '%e' -- c ile baþlayanlar