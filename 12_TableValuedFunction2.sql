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

-- her iki objede execute i�lemi yap�ld���nda �nce kayantaktan b�t�n veriler getirilir sonra filtre uygulan�r...

--functionlarda verilerin taman�n� getirmektense parametre ile dinamik sonu�lar �retebilir. yeni table-valued-functionlar�n viewlardan fark� parametre alabilmeleridir..

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

select * from fnUrunGenelV2(20) -- arguman�z 20. kaynaktan sadece stoku 20'den az olan getirilir...
