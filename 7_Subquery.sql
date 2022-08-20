
select CategoryName from Categories

-- subquerty sorgu içerisinde kullanýldýðýnda her bir satuýr için iç sorgu çalýþtýrýlacaðýndan bu performans açýcýnsan olumsuz sonuçlar doðuracaktýr... bu yüzden subquery'Ý sorgu içerisinde kullanmamamlýyýz...

select 
	ProductName,
	SupplierID,
	CategoryID,
	(select CategoryName from Categories as c 
	where c.CategoryID= p.CategoryID),
	UnitPrice,
	UnitsInStock	
from Products as p

-- performans açýsýnda iyi olmadýðý için örneklere deavam etmiyoruz. araþtýrýnýz...