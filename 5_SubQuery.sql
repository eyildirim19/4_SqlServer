
--t-sqlde de�i�ken tan�mlama. de�i�ken ve parametre isimleri @ ile ba�lar..

declare @isim nvarchar(50) = 'BT AKADEM�'
SELECT	@isim

declare @kurs nvarchar(50);
-- de�i�kenen de�er atama
-- de�i�kene de�er atama 1.;
--set ifadesi ile tan�mdan sonra de�er atanabilir.
set @kurs = '28 may�s hafta sonu yaz�l�m uzmanl���'
select @kurs

-- de�i�kene de�er atama 2;
--select ifadesi ile de de�er atanabilir
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
-- �nce parantez i�i �al���r, sonra parantez d���
select * from Products
where UnitsInStock > (select AVG(UnitsInStock) from Products)

