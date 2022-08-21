/*
	User Defined Functions

	1) Table-valued-function  (geriye tablo d�nen fonksyionlar..
	2) Scalar-valued function (geriye tek sat�r tek s�tun d�nen fonksiyonlar

*/
--table valued function
--olu�turulan fonksiyonlar Veritaban� sekmemizde Programmability sekmesinde functions sekmesi alt�nda bulunurlar...

create function fnUrunler()
	returns table -- function d�n�� tipi
as
	return select * from Products

go

select * from fnUrunler()


go


create function fnUrunBilgi()
returns table
as
	return (select p.ProductName,p.UnitPrice,c.CategoryName,s.CompanyName from Products as p
			inner join Categories as c
			on p.CategoryID = c.CategoryID
			inner join Suppliers as s
			on p.SupplierID = s.SupplierID)
go

select * from fnUrunBilgi()

select * from fnUrunBilgi()
where ProductName = 'Chai'
