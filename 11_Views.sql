/*
	Views => tablolardan t�retilmi� tablolar olarak d���nebilirsiniz...sorgular�n�z viewlar i�risinde saklan�r. bundan sonraki execute i�lemlerinde sorgu yazmak yerine view �a�r�l�r...

	create view ViewName
		as
			select ifdesi




	select * from ViewName



	sql serverdaki yazd���m�z sorgular�n saklanmas�n� sa�lar. 
*/



--t-sqlde sat�r bazl� ko�ullar case when ifadeleridir..

--case when sat�r bazl� veriler yorumlanarak resultta yeni bir alan olu�turmak i�in kullan�ll�r
create view UrunStokDurumlari
as
	select 
		ProductName,
		UnitsInStock,
		case
			when UnitsInStock = 0 then 'Stok Bitmi�' -- e�er stok 0 ise Stok Bitmi�
			when UnitsInStock >1 and UnitsInStock < 10 then 'Stok Azalm��'
			when UnitsInStock between 11 and 30 then 'Stok Yeterli'
			else 'Stok �yi'
		end as StokDurum,
		c.CategoryName
	from Products as p
	inner join Categories as c
	on c.CategoryID = p.CategoryID
	go
	-- sorgu view i�erisinde saklan�r. bundan sonraki kullan�mlarda viewa verilen isim ile sorgu tetiklenir...
	-- olu�turulan viewlar Veritaban� sekmesinde views men�s� alt�nda bulunur...
	-- olu�turulan view alter komutu ile veya view'�N �ZER�NE SA� TIK YAPILARAK DESIGN SE�ENE�� �LE D�ZENLENEB�L�R...
	-- olu�turulan viewlar drop view ViewName ile veya view'�n �zerine sa� t�k yap�larak delete se�ene�i ile silinebilir...
	select * from UrunStokDurumlari

