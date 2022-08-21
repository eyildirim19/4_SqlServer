create function fnUrunGenel()
returns table
as
	return select * from Products

go

create view vwUrunGenel
as
	select * from Products

go

select *from fnUrunGenel() --fonksiyon
where UnitsInStock < 20

select * from vwUrunGenel -- table
where UnitsInStock<20

-- her iki objede execute iþlemi yapýldýðýnda önce kayantaktan bütün veriler getirilir sonra filtre uygulanýr...

--functionlarda verilerin tamanýný getirmektense parametre ile dinamik sonuçlar üretebilir. yeni table-valued-functionlarýn viewlardan farký parametre alabilmeleridir..

go
create function fnUrunGenelV2(@Stok int) --parametre alan fonksiyon
returns table
	return select * from Products 
			where UnitsInStock <@Stok

go
select * from fnUrunGenel()
where UnitsInStock < 20

select * from vwUrunGenel 
where UnitsInStock <20

select * from fnUrunGenelV2(20) -- argumanýz 20. kaynaktan sadece stoku 20'den az olan getirilir...
