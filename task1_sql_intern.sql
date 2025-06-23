create database E_commerm
use E_commerm

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    Description VARCHAR(255),
    Price DECIMAL(10, 2),
    Stock INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Customers (FullName, Email, Phone, Address, City, Country)
VALUES ('Neeraja K', 'neeraja@example.com', '9876543210', 'HYD', 'Hyderabad', 'India'),
('Harsha','harsha@example.com', '9876543220', 'KPHB', 'Hyderabad', 'India')


INSERT INTO Products (ProductName, Description, Price, Stock)
VALUES ('Wireless Mouse', 'Ergonomic wireless mouse', 599.00, 100),
('Laptop', 'dell touch screen', 59900.00, 100)

select * from Customers;





