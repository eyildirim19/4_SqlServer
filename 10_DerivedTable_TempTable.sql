SELECT GETDATE()
SELECT YEAR(GETDATE())
SELECT MONTH(GETDATE())
use Northwind


--DerivedTable => türetilmiþ tablo. gerçek tablo olmamakla beraber o anki sql sorgusunda gerçek tablo gibi kullanýlýr. sorgu sonrasunda kullanýlamaz (sorgu execute edildiðinde silinirler)...
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
where Yas < 59   --iç sorguda as ile ýluþturduðumuz alaný dýþarýda derived table sayesinde where uygulayabildik...
--- derivedtable ler sorgu sonrasý kullanýlamaz...
--select * from DerivedTable
	-- TEMPDB => DERÝVED TABLELERÝN AKSÝNE DAHA UZUN ÖMÜRLÜDÜR. ÇÜNKÜ SORGU AÞAMASINDA OLUÞUR VE TEMPDB SEKMESÝNDE SAKLANIR. O ANKI INSTANCE (OTURUM)'DA GEÇERLÝDÝR..

	-- tempdb (geçici tablolar)
		select 
			FirstName + ' ' + LastName as FullAd,
   			YEAR(BirthDate) as DogumYil,
			YEAR(Getdate()) - YEAR(Birthdate) as Yas
			into #Calisanlar -- Calisanlar tablosu oluþturuyoruz.... 
		from Employees

		select * from #Calisanlar
		select * from #Calisanlar
		select * from #Calisanlar
		where FullAd = 'Ekrem YILDIRIM'

		insert #Calisanlar
		(FullAd,DogumYil,Yas)
		values
		('Büþra',2002,18)
		--tabloyu sil...
		drop table #Calisanlar