/*
	JOINS => B�RDEN FAZLA SORGUYU B�R�E�T�R�P TEK B�R RESULT ELDE ETMEK ���N KULLANILIR. BU RESULTTA JOIN T�R�NE G�RE E�LE�T�RME YAPILIR. �K� FARKLI K�MEN�N E�LE�EN ELEMANLIRI G�B� 

	JOINLER �K�YE AYRILIR;
	INNER JOIN (�� JO�N) =>SADECE E�LE�EN ELEMANLARI
	OUTHER JOIN (DI� JO�N) => E�LE�MEYEN VE E�LE�ENLER ELEMANLARI L�STELER. BURADA LEFT, R�GHT VE FULL KAVRAMI VARDIR. SORGUDA �NCELEYECE��Z...
*/
--DE���KEN TABLO 
declare @akumesi table (eleman nvarchar(50)) -- de�i�ken tablo
declare @bkumesi table (eleman1 nvarchar(50)) -- de�i�ken tablo

insert @akumesi (eleman) values ('A'),('B'),('C'),('!')
insert @bkumesi (eleman1) values ('89'),('�'),('A'),('A'),('!'),('?')

SELECT * FROM @akumesi
SELECT * FROM @bkumesi
/*
	INNER JO�N (�K� TABLOLANIN E�LE�EN KAYITLARINI GET�R�R...)
*/
select * from @akumesi as a -- 1. tablomuz
inner join @bkumesi as b -- 2. tablomuz   -- joind yazabiliriniz..
on a.eleman = b.eleman1 -- tablolar�n e�le�ecek alanlar�n� belirtiroyuz

/*
	left outer join => sol tablonun tamam�n�, sa� tablonun e�le�enlerini getirir
*/
select * from @akumesi as a -- sol tablo
left outer join  @bkumesi as b--sa� tablo -- left joinde yaz�labilir....
on a.eleman = b.eleman1

/*
	right outer join => sa� tablonun tamam�n�, sol tablonun e�le�enlerini getirir
*/

select * from @akumesi as a -- sol tablo
right outer join  @bkumesi as b--sa� tablo -- right joinde yaz�labilir
on a.eleman = b.eleman1

/*
	full outer join => her iki taraf�nda e�le�en ve e�le�meyen kay�lar�n� getir...
*/

select * from @akumesi as a -- sol tablo
full outer join  @bkumesi as b--sa� tablo   full joinde yaz�labilir
on a.eleman = b.eleman1


-- inner yazmadan join yazars�n�z bu inner join olarak alg�lan�r...
--select * from @akumesi as a -- 1. tablomuz
--join @bkumesi as b -- 2. tablomuz 
--on a.eleman = b.eleman1 -- tablolar�n e�le�ecek alanlar�n� belirtiroyuz