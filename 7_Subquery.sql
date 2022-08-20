
select CategoryName from Categories

-- subquerty sorgu i�erisinde kullan�ld���nda her bir satu�r i�in i� sorgu �al��t�r�laca��ndan bu performans a��c�nsan olumsuz sonu�lar do�uracakt�r... bu y�zden subquery'� sorgu i�erisinde kullanmamaml�y�z...

select 
	ProductName,
	SupplierID,
	CategoryID,
	(select CategoryName from Categories as c 
	where c.CategoryID= p.CategoryID),
	UnitPrice,
	UnitsInStock	
from Products as p

-- performans a��s�nda iyi olmad��� i�in �rneklere deavam etmiyoruz. ara�t�r�n�z...