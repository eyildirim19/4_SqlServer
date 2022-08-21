/*
	User Defined Functions

	1) Table-valued-function  (geriye tablo dönen fonksyionlar..
	2) Scalar-valued function (geriye tek satýr tek sütun dönen fonksiyonlar

*/
--table valued function
--oluþturulan fonksiyonlar Veritabaný sekmemizde Programmability sekmesinde functions sekmesi altýnda bulunurlar...

create function fnUrunler()
	returns table -- function dönüþ tipi
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
