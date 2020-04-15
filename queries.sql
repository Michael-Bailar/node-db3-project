-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT ProductName, Category.CategoryName
    From Product
    Left JOIN Category on Product.id = Category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- gives 820?
    select [order].Id, shipper.CompanyName
    from [order]
    join shipper on shipper.Id = [order].ShipVia
    where [order].OrderDate < date('2012-08-09')

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT P.ProductName, O.Quantity, O.id
    FROM OrderDetail as O
    LEFT JOIN Product as P on O.ProductId = P.Id
    WHERE O.OrderId = 10251
    
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT [Order].id, Customer.CompanyName, Employee.LastName
    FROM [Order]
    Join Customer on [Order].Customerid = Customer.id
    JOIN Employee on [Order].EmployeeId = Employee.Id