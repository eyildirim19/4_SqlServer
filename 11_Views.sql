/*
	Views => tablolardan türetilmiþ tablolar olarak düþünebilirsiniz...sorgularýnýz viewlar içrisinde saklanýr. bundan sonraki execute iþlemlerinde sorgu yazmak yerine view çaðrýlýr...

	create view ViewName
		as
			select ifdesi




	select * from ViewName



	sql serverdaki yazdýðýmýz sorgularýn saklanmasýný saðlar. 
*/



--t-sqlde satýr bazlý koþullar case when ifadeleridir..

--case when satýr bazlý veriler yorumlanarak resultta yeni bir alan oluþturmak için kullanýllýr
create view UrunStokDurumlari
as
	select 
		ProductName,
		UnitsInStock,
		case
			when UnitsInStock = 0 then 'Stok Bitmiþ' -- eðer stok 0 ise Stok Bitmiþ
			when UnitsInStock >1 and UnitsInStock < 10 then 'Stok Azalmýþ'
			when UnitsInStock between 11 and 30 then 'Stok Yeterli'
			else 'Stok Ýyi'
		end as StokDurum,
		c.CategoryName
	from Products as p
	inner join Categories as c
	on c.CategoryID = p.CategoryID
	go
	-- sorgu view içerisinde saklanýr. bundan sonraki kullanýmlarda viewa verilen isim ile sorgu tetiklenir...
	-- oluþturulan viewlar Veritabaný sekmesinde views menüsü altýnda bulunur...
	-- oluþturulan view alter komutu ile veya view'ÝN ÜZERÝNE SAÐ TIK YAPILARAK DESIGN SEÇENEÐÝ ÝLE DÜZENLENEBÝLÝR...
	-- oluþturulan viewlar drop view ViewName ile veya view'Ýn üzerine sað týk yapýlarak delete seçeneði ile silinebilir...
	select * from UrunStokDurumlari

