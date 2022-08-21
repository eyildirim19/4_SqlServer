
/*
	ddl (data defination language) => veritabný objlerini yönetmek için kullanýlan sql ifadeleridir.

	create => oluþtur
	alter => düzenle
	drop => sil

*/
create table Ogrenciler
(
	Id int,
	Adi nvarchar(50),
	SoyAdi nvarchar(50)
)
-- tabloyu düzenliyoruz...
alter table Ogrenciler
	alter column Id int not null -- ID alanýný not null olarak deðiþtiriyoruz...

-- tabloyu düzenliyoruz...
alter table Ogrenciler
 	add constraint pk_Ogrenciler primary key (Id) -- ID alanýný pk olarak düzenliyoruz...


-- insert, update, delete komutlarý dml komutlarýdýr...
insert Ogrenciler
(Id,Adi)
values
(1,'Büþra')

insert Ogrenciler
(Id,Adi,SoyAdi)
values
(2,'Onur','Derma')

select * from Ogrenciler


--ID'si 1 olan öðrencinin soyadýný güncelleyelim..
-- UPDATE KOMUTU KULLANILIRKEN DÝKKATLÝ KULLANILMASI GEREKEN BÝR KOMUTTUR. EÐER WHERE ÝLE KULLANILMAZSA BÜTÜN TABLOYU ETKÝLER

UPDATE Ogrenciler
	SET SoyAdi = 'GENÇ'
where Id =1

update Ogrenciler
	set SoyAdi = 'DERMAN'
WHERE Id= 2

-- yeni öðrenci ekliyoruz...

insert Ogrenciler
(Id,Adi,SoyAdi)
values
(3,'Ziya','Erdoðdu')



select * from Ogrenciler

-- delete komutu da update komutu gibi bütün tabloyu etkiler. bu yüzden where ile kullanýlýr. (çok dikkatli olunuz)
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
	constraint fk_Donem foreign key(DonemID) references Donemler(ID) -- iliþkilendirme
)
--tinyint  => byte
--smallint => short
--int	   => int
--bigint   => long
--string   => char,varchar,nchar,nvarchar,text,ntext
insert Donemler
(ID,aDi)
values
(100,'Güz Dönemi')

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