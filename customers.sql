create database market;
USE market ;
CREATE TABLE customers (
    customerID int NOT NULL PRIMARY KEY ,
    LastName varchar(255) DEFAULT  'Ahmed',
    FirstName varchar(255),
    Address varchar(255) NOT NULL,
    City varchar(255)
);

CREATE TABLE Products (
    ProductID int NOT NULL PRIMARY KEY,
	SupplierID  int NOT NULL,
    Price int,
     customerID int NOT NULL,
    constraint customers_Products_fk foreign key (customerID)
    references customers (customerID)  
);
CREATE TABLE Orders (
    ID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    ProductID int NOT NULL,
    constraint Products_Orders_fk foreign key ( ProductID)
    references Products ( ProductID)  
    
);