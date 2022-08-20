/*
	JOINS => BÝRDEN FAZLA SORGUYU BÝRÞEÞTÝRÝP TEK BÝR RESULT ELDE ETMEK ÝÇÝN KULLANILIR. BU RESULTTA JOIN TÜRÜNE GÖRE EÞLEÞTÝRME YAPILIR. ÝKÝ FARKLI KÜMENÝN EÞLEÞEN ELEMANLIRI GÝBÝ 

	JOINLER ÝKÝYE AYRILIR;
	INNER JOIN (ÝÇ JOÝN) =>SADECE EÞLEÞEN ELEMANLARI
	OUTHER JOIN (DIÞ JOÝN) => EÞLEÞMEYEN VE EÞLEÞENLER ELEMANLARI LÝSTELER. BURADA LEFT, RÝGHT VE FULL KAVRAMI VARDIR. SORGUDA ÝNCELEYECEÐÝZ...
*/
--DEÐÝÞKEN TABLO 
declare @akumesi table (eleman nvarchar(50)) -- deðiþken tablo
declare @bkumesi table (eleman1 nvarchar(50)) -- deðiþken tablo

insert @akumesi (eleman) values ('A'),('B'),('C'),('!')
insert @bkumesi (eleman1) values ('89'),('Ý'),('A'),('A'),('!'),('?')

SELECT * FROM @akumesi
SELECT * FROM @bkumesi
/*
	INNER JOÝN (ÝKÝ TABLOLANIN EÞLEÞEN KAYITLARINI GETÝRÝR...)
*/
select * from @akumesi as a -- 1. tablomuz
inner join @bkumesi as b -- 2. tablomuz   -- joind yazabiliriniz..
on a.eleman = b.eleman1 -- tablolarýn eþleþecek alanlarýný belirtiroyuz

/*
	left outer join => sol tablonun tamamýný, sað tablonun eþleþenlerini getirir
*/
select * from @akumesi as a -- sol tablo
left outer join  @bkumesi as b--sað tablo -- left joinde yazýlabilir....
on a.eleman = b.eleman1

/*
	right outer join => sað tablonun tamamýný, sol tablonun eþleþenlerini getirir
*/

select * from @akumesi as a -- sol tablo
right outer join  @bkumesi as b--sað tablo -- right joinde yazýlabilir
on a.eleman = b.eleman1

/*
	full outer join => her iki tarafýnda eþleþen ve eþleþmeyen kayýlarýný getir...
*/

select * from @akumesi as a -- sol tablo
full outer join  @bkumesi as b--sað tablo   full joinde yazýlabilir
on a.eleman = b.eleman1


-- inner yazmadan join yazarsýnýz bu inner join olarak algýlanýr...
--select * from @akumesi as a -- 1. tablomuz
--join @bkumesi as b -- 2. tablomuz 
--on a.eleman = b.eleman1 -- tablolarýn eþleþecek alanlarýný belirtiroyuz