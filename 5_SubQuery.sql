
--t-sqlde deðiþken tanýmlama. deðiþken ve parametre isimleri @ ile baþlar..

declare @isim nvarchar(50) = 'BT AKADEMÝ'
SELECT	@isim

declare @kurs nvarchar(50);
-- deðiþkenen deðer atama
-- deðiþkene deðer atama 1.;
--set ifadesi ile tanýmdan sonra deðer atanabilir.
set @kurs = '28 mayýs hafta sonu yazýlým uzmanlýðý'
select @kurs

-- deðiþkene deðer atama 2;
--select ifadesi ile de deðer atanabilir
declare @adsoyad nvarchar(50)
select @adsoyad = 'bt akademi'
select @adsoyad

declare @num1 int,@num2 int
set @num1 = 4
set @num2 =1
select @num1 + @num2

declare @ortalamStok int = (select AVG(UnitsInStock) from Products)
--select @ortalamStok

select * from Products
where UnitsInStock > @ortalamStok

--subquery ifadeleri
-- önce parantez içi çalýþýr, sonra parantez dýþý
select * from Products
where UnitsInStock > (select AVG(UnitsInStock) from Products)

