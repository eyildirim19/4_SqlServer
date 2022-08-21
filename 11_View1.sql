

-- viewlar sorgudan beslenen tablolard�r. yani sorgu �al���tr�l�p veri view �zerinden g�sterilir..

create view Kategoriler
as
	select c.CategoryName,COUNT(*) as UrunAdet from Categories as c
	inner join Products as p
	on c.CategoryID = p.CategoryID
	group by c.CategoryName
go

select *from Kategoriler
	--order by CategoryID desc => viewlarda order by ifadeleri kullan�lamaz...

--viewa'a CategoryID alan�n� ekleyelim..
--view'a sa� t�k yap�p Design se�enepi ile d�zenlemek daha mant�kl�d�r...
-- desing penceresinde query b�l�m�ne sorgunuzu yazarak ctrl+s ile kaydedebilirsiniz....

select * from FaxNosuOlmayanMusteriler
select * from UrunGenelBilgi