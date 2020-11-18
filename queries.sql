-- -- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

-- SELECT Product.ProductName, Category.CategoryName
-- FROM Product
-- JOIN Category
-- ON Product.CategoryId = Category.Id

-- -- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

-- SELECT [Order].Id as [Order ID], Shipper.CompanyName
-- FROM [Order]
-- JOIN Shipper
-- ON [Order].ShipVia = Shipper.Id
-- WHERE [Order].OrderDate < '2012-08-09';

-- -- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

-- SELECT OrderDetail.OrderId as [Order ID], Product.ProductName
-- FROM OrderDetail
-- JOIN Product
-- ON OrderDetail.ProductId = Product.Id
-- WHERE OrderDetail.OrderId = 10251;

-- -- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

-- SELECT [Order].Id as [Order ID], [Order].ShipName as [Company Name], Employee.LastName as [Employee Last Name]
-- FROM [Order]
-- JOIN Employee
-- ON [Order].EmployeeId = Employee.Id