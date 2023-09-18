-- Create a new database
CREATE DATABASE SampleDatabase;
-- exec create database
GO
-- Use the newly created database
USE SampleDatabase;

-- Create a table for storing customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100)
);
-- Create a table for storing orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO
-- Insert sample data into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com');

-- Insert sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2023-09-18 10:00:00', 100.50),
    (102, 2, '2023-09-18 11:30:00', 75.25);

