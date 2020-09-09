-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.ProductName, category.CategoryName
FROM Product
    JOIN Category on product.CategoryId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].Id, shipper.CompanyName
FROM [Order]
    JOIN shipper on shipper.Id = [order].ShipVia
WHERE [order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT product.ProductName, OrderDetail.Quantity
FROM OrderDetail
    JOIN product ON OrderDetail.ProductId = product.id
WHERE OrderDetail.OrderId = '10251';

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [order].id, customer.CompanyName, employee.LastName
FROM [order]
    JOIN Customer on [order].CustomerId = customer.Id
    JOIN Employee on [order].EmployeeId = employee.Id;