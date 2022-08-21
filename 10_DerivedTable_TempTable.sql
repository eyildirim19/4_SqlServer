SELECT GETDATE()
SELECT YEAR(GETDATE())
SELECT MONTH(GETDATE())
use Northwind


--DerivedTable => t�retilmi� tablo. ger�ek tablo olmamakla beraber o anki sql sorgusunda ger�ek tablo gibi kullan�l�r. sorgu sonrasunda kullan�lamaz (sorgu execute edildi�inde silinirler)...
select * from (
		select 
			FirstName + ' ' + LastName as FullAd,
   			YEAR(BirthDate) as DogumYil,
			YEAR(Getdate()) - YEAR(Birthdate) as Yas
		from Employees
		--where Yas is not null -- as ise isimlendirilen alanlara where uygulanamaz...
		--where YEAR(Getdate()) - YEAR(Birthdate) < 60
		--order by Yas
) as sss
where Yas < 59   --i� sorguda as ile �lu�turdu�umuz alan� d��ar�da derived table sayesinde where uygulayabildik...
--- derivedtable ler sorgu sonras� kullan�lamaz...
--select * from DerivedTable
	-- TEMPDB => DER�VED TABLELER�N AKS�NE DAHA UZUN �M�RL�D�R. ��NK� SORGU A�AMASINDA OLU�UR VE TEMPDB SEKMES�NDE SAKLANIR. O ANKI INSTANCE (OTURUM)'DA GE�ERL�D�R..

	-- tempdb (ge�ici tablolar)
		select 
			FirstName + ' ' + LastName as FullAd,
   			YEAR(BirthDate) as DogumYil,
			YEAR(Getdate()) - YEAR(Birthdate) as Yas
			into #Calisanlar -- Calisanlar tablosu olu�turuyoruz.... 
		from Employees

		select * from #Calisanlar
		select * from #Calisanlar
		select * from #Calisanlar
		where FullAd = 'Ekrem YILDIRIM'

		insert #Calisanlar
		(FullAd,DogumYil,Yas)
		values
		('B��ra',2002,18)
		--tabloyu sil...
		drop table #Calisanlar