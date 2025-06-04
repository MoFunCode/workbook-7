use northwind;
-- Use 'count(*)' to count all suppliers in the table
select count(*)
from northwind.Suppliers;

select *
from northwind.Employees;
--  Use 'SUM' to get the total salaries
select SUM(Employees.Salary)
from northwind.Employees;

select *
from northwind.Products;
select ProductName, unitPrice
from northwind.Products;
select AVG(UnitPrice)
from northwind.Products;

select MAX(UnitPrice)
from northwind.Products;
select MIN(UnitPrice)
from northwind.Products;

-- What is the supplier ID of each supplier and the number of items they supply?
Select supplierID, COUNT(*)
from northwind.Products
group by supplierID;

-- What is the category ID of each category and the average price of each item in the category?
Select CategoryID, AVG(UnitPrice)
from northwind.Products
group by CategoryID;


-- For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?
Select supplierID, COUNT(*)
from northwind.Products
group by supplierID
having COUNT(*) >= 5;

-- List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order product name

SELECT productID, ProductName, UnitPrice * UnitsInStock as inventoryValue
FROM northwind.Products order by inventoryValue desc, productName asc;


























