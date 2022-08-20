/*
	SQL => YAPISAL SORGULAMA D�L�
		T-SQL =>  Microsoftun geli�tirdi�i sql dilidir.
		DML => insert,update,delete,select ifadeleridir. veriler �zerinden i�lem yapmam�z� sa�layan ifadelerdir...
		DDL => create,alter,drop ifadeleridir. objeler �zerinde i�lem yapmam�z� sa�layan ifadeler vard�r. veritaban� objeleri( tablo,view,procedure,function,trigger)
		DCL => grant,deny,revoke ifadeleridir. yetkilendirme i�lemleri yapmam�z� sa�layan ifadelerdir....
*/

-- kullan�c�lar tablosuna kay�t ekleyelim...
/*
	insert TableName
	(Alan1,Alan2,Alan3)
	values
	(Deger1,Deger2,Deger3)
*/

-- ID alan� Identiy column oldu�u i�in bu alan biz de�er ekleyemeyiz. bu alan� de�er sql server taraf�ndan eklenir...

-- SQL D�L�NDE STR�NG �FADELER ' �LE �FADE ED�L�R..

-- T-SQL D�L�NDE QUYERY PENCER�S�NDE �ALI�MASINI �STED���M�Z KOMUT SE��L�P EXECUTE ED�L�R. EXEUTE ETMEN�N KISA YOLU F5 TU�UDUR.
	
	--QUERY PENCERS� B�RDEN FAZLA VER�TABANI �LE �ALI�MAMIZI SA�LAYAN B�R PENCERED�R.  BU PENCERE SORGU VEYA SORGULARIMIZDAN �NCE �ALI�ACA�IMIZ VER�TABANI SE��YORUZ. 1. YOL TOOLBARDAN TOOLBARDAN DATABASE DROPDOWNLTEN VER�TABANI SE�EB�L�RS�N�Z. 2 YOL USE �FADES� �LE VER�TABANINI SE�EB�L�RS�N�Z

	USE FirstDB --SORGUMUZ SE��P F5 �LE EXECUTE ED�YORUZ. B�R SONRAK� USE �FADES�NE KADAR BEL�RT�LEN VER�TABANI �LE �ALI�ILIR...

	insert Kullanicilar
	(Adi,SoyAdi)
	values
	('Ekrem','YILDIRIM')

	--SORGU TEK SATIRDA YAZILAB�L�R
	insert Kullanicilar (Adi,SoyAdi) values ('B��ra','GEN�')

	-- �OKLU �NSERT
	insert Kullanicilar
	(Adi,SoyAdi)
	values
	('Onur','DERMAN'),
	('Celalettin','Mikdan'),
	('K�bra','KARAKU�')

	insert KullaniciTelefon
	(TelefonNo,KullaniciID)
	values
	('5413510019',1)


	insert KullaniciTelefon
	(TelefonNo,KullaniciID)
	values
	('5454564646',2),
	('4568776455',3)


	-- bu sorgu �al��t�r�ld���nda hata verecektir. ��nk� ID alan� identity column oldu�u i�in de�er sql taraf�ndan �retilecektir.  
	insert Kullanicilar
	(ID,Adi,SoyAdi)
	values
	(7,'AAAA','BVV')


	--Not : update ve delete i�lemini select ifalerinden sonra i�leriz...


