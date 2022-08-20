/*
	SQL => YAPISAL SORGULAMA DÝLÝ
		T-SQL =>  Microsoftun geliþtirdiði sql dilidir.
		DML => insert,update,delete,select ifadeleridir. veriler üzerinden iþlem yapmamýzý saðlayan ifadelerdir...
		DDL => create,alter,drop ifadeleridir. objeler üzerinde iþlem yapmamýzý saðlayan ifadeler vardýr. veritabaný objeleri( tablo,view,procedure,function,trigger)
		DCL => grant,deny,revoke ifadeleridir. yetkilendirme iþlemleri yapmamýzý saðlayan ifadelerdir....
*/

-- kullanýcýlar tablosuna kayýt ekleyelim...
/*
	insert TableName
	(Alan1,Alan2,Alan3)
	values
	(Deger1,Deger2,Deger3)
*/

-- ID alaný Identiy column olduðu için bu alan biz deðer ekleyemeyiz. bu alaný deðer sql server tarafýndan eklenir...

-- SQL DÝLÝNDE STRÝNG ÝFADELER ' ÝLE ÝFADE EDÝLÝR..

-- T-SQL DÝLÝNDE QUYERY PENCERÝSÝNDE ÇALIÞMASINI ÝSTEDÝÐÝMÝZ KOMUT SEÇÝLÝP EXECUTE EDÝLÝR. EXEUTE ETMENÝN KISA YOLU F5 TUÞUDUR.
	
	--QUERY PENCERSÝ BÝRDEN FAZLA VERÝTABANI ÝLE ÇALIÞMAMIZI SAÐLAYAN BÝR PENCEREDÝR.  BU PENCERE SORGU VEYA SORGULARIMIZDAN ÖNCE ÇALIÞACAÐIMIZ VERÝTABANI SEÇÝYORUZ. 1. YOL TOOLBARDAN TOOLBARDAN DATABASE DROPDOWNLTEN VERÝTABANI SEÇEBÝLÝRSÝNÝZ. 2 YOL USE ÝFADESÝ ÝLE VERÝTABANINI SEÇEBÝLÝRSÝNÝZ

	USE FirstDB --SORGUMUZ SEÇÝP F5 ÝLE EXECUTE EDÝYORUZ. BÝR SONRAKÝ USE ÝFADESÝNE KADAR BELÝRTÝLEN VERÝTABANI ÝLE ÇALIÞILIR...

	insert Kullanicilar
	(Adi,SoyAdi)
	values
	('Ekrem','YILDIRIM')

	--SORGU TEK SATIRDA YAZILABÝLÝR
	insert Kullanicilar (Adi,SoyAdi) values ('Büþra','GENÇ')

	-- ÇOKLU ÝNSERT
	insert Kullanicilar
	(Adi,SoyAdi)
	values
	('Onur','DERMAN'),
	('Celalettin','Mikdan'),
	('Kübra','KARAKUÞ')

	insert KullaniciTelefon
	(TelefonNo,KullaniciID)
	values
	('5413510019',1)


	insert KullaniciTelefon
	(TelefonNo,KullaniciID)
	values
	('5454564646',2),
	('4568776455',3)


	-- bu sorgu çalýþtýrýldýðýnda hata verecektir. çünkü ID alaný identity column olduðu için deðer sql tarafýndan üretilecektir.  
	insert Kullanicilar
	(ID,Adi,SoyAdi)
	values
	(7,'AAAA','BVV')


	--Not : update ve delete iþlemini select ifalerinden sonra iþleriz...


