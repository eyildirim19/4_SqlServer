

-- viewlar sorgudan beslenen tablolardýr. yani sorgu çalýþýtrýlýp veri view üzerinden gösterilir..

create view Kategoriler
as
	select c.CategoryName,COUNT(*) as UrunAdet from Categories as c
	inner join Products as p
	on c.CategoryID = p.CategoryID
	group by c.CategoryName
go

select *from Kategoriler
	--order by CategoryID desc => viewlarda order by ifadeleri kullanýlamaz...

--viewa'a CategoryID alanýný ekleyelim..
--view'a sað týk yapýp Design seçenepi ile düzenlemek daha mantýklýdýr...
-- desing penceresinde query bölümüne sorgunuzu yazarak ctrl+s ile kaydedebilirsiniz....

select * from FaxNosuOlmayanMusteriler
select * from UrunGenelBilgi