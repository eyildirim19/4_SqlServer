
/*
	ddl (data defination language) => veritabn� objlerini y�netmek i�in kullan�lan sql ifadeleridir.

	create => olu�tur
	alter => d�zenle
	drop => sil

*/
create table Ogrenciler
(
	Id int,
	Adi nvarchar(50),
	SoyAdi nvarchar(50)
)
-- tabloyu d�zenliyoruz...
alter table Ogrenciler
	alter column Id int not null -- ID alan�n� not null olarak de�i�tiriyoruz...

-- tabloyu d�zenliyoruz...
alter table Ogrenciler
 	add constraint pk_Ogrenciler primary key (Id) -- ID alan�n� pk olarak d�zenliyoruz...


-- insert, update, delete komutlar� dml komutlar�d�r...
insert Ogrenciler
(Id,Adi)
values
(1,'B��ra')

insert Ogrenciler
(Id,Adi,SoyAdi)
values
(2,'Onur','Derma')

select * from Ogrenciler


--ID'si 1 olan ��rencinin soyad�n� g�ncelleyelim..
-- UPDATE KOMUTU KULLANILIRKEN D�KKATL� KULLANILMASI GEREKEN B�R KOMUTTUR. E�ER WHERE �LE KULLANILMAZSA B�T�N TABLOYU ETK�LER

UPDATE Ogrenciler
	SET SoyAdi = 'GEN�'
where Id =1

update Ogrenciler
	set SoyAdi = 'DERMAN'
WHERE Id= 2

-- yeni ��renci ekliyoruz...

insert Ogrenciler
(Id,Adi,SoyAdi)
values
(3,'Ziya','Erdo�du')



select * from Ogrenciler

-- delete komutu da update komutu gibi b�t�n tabloyu etkiler. bu y�zden where ile kullan�l�r. (�ok dikkatli olunuz)
delete Ogrenciler
where Id =3


select * from Ogrenciler

Create table Donemler
(
	ID int not null,
	Adi nvarchar(50),
	constraint pk_donemler primary key(ID)
)
go

--alter table Donemler
--	drop constraint pk_donemler

create table Dersler
(
	ID int not null identity(1,1), --identity column (baslangic,artis)
	DersAdi nvarchar(50),
	Kredi tinyint, -- tinyint => c# dilindeki byte tipine denktir.
	DonemId int
	constraint pk_Dersler primary key(ID)
	constraint fk_Donem foreign key(DonemID) references Donemler(ID) -- ili�kilendirme
)
--tinyint  => byte
--smallint => short
--int	   => int
--bigint   => long
--string   => char,varchar,nchar,nvarchar,text,ntext
insert Donemler
(ID,aDi)
values
(100,'G�z D�nemi')

insert Dersler
(DersAdi,Kredi,DonemId)
values
('Algoritma',4,100)


-- table silme
drop table Dersler
drop table Donemler


create table Final
(
	Id int not null primary key
)