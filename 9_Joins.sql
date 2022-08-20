select p.ProductName,p.UnitsInStock,c.CategoryName from Categories as c
join Products as p
on c.CategoryID = p.CategoryID

select p.ProductName,p.UnitPrice,c.CategoryName,s.CompanyName from Categories as c
join Products as p
on c.CategoryID = p.CategoryID
join Suppliers as s
on s.SupplierID = p.SupplierID

select c.CategoryName,COUNT(*) as UrunAdeti from Categories as c
inner join Products as p
on c.CategoryID = p.CategoryID
group by c.CategoryName

select * from [Order Details] as od
inner join Products as p 
on p.ProductID = od.ProductID

select p.ProductName,SUM(od.UnitPrice * od.Quantity) as ToplamGelir from [Order Details] as od
inner join Products as p 
on p.ProductID = od.ProductID
group by p.ProductName



insert Employees
(FirstName,LastName,Title)
values
('Ekrem','Yýldýrým','Developer'),
('Onur','Derman','Developer')


select * from Employees
select * from Orders where EmployeeID = 11

-- hiç sipariþ vermeyen çalýþanlarým???
select  e.FirstName,e.LastName from Orders as o
right join Employees as e
on e.EmployeeID = o.EmployeeID
where o.OrderID is null

