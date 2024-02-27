﻿--CREATE DATABASE ConSoleGame
--DROP DATABASE ConSoleGame
USE ConSoleGame
CREATE TABLE Brand
(
  BrandID INT IDENTITY(1,1) NOT NULL,
  BrandName NVARCHAR(100) NOT NULL,
  PRIMARY KEY (BrandID)
);

CREATE TABLE Category
(
  CategoryID  INT IDENTITY(1,1) NOT NULL,
  CategoryName  NVARCHAR(100) NOT NULL,
  PRIMARY KEY (CategoryID)
);

CREATE TABLE Account
(
  AccID INT IDENTITY(1,1) NOT NULL,
  FirstName NVARCHAR(100) NOT NULL,
  LastName NVARCHAR(100) NOT NULL,
  Email CHAR(300) NOT NULL,
  Password CHAR(64) NOT NULL,
  Role VARCHAR(50) NOT NULL,
  Birthday DATE ,
  Address NVARCHAR(300) ,
  Country NVARCHAR(100) ,
  PhoneNumber CHAR(11) ,
  
  PRIMARY KEY (AccID)
);
CREATE TABLE Customer
(
  CusID INT IDENTITY(1,1) NOT NULL,
  AccID INT NOT NULL,
  FOREIGN KEY (AccID) REFERENCES Account(AccID),
  PRIMARY KEY (CusID)
);

CREATE TABLE Employee
(
  EmpID INT IDENTITY(1,1) NOT NULL,
  Position NVARCHAR(50) NOT NULL,
  AccID INT NOT NULL,
  FOREIGN KEY (AccID) REFERENCES Account(AccID),
  PRIMARY KEY (EmpID)
);




CREATE TABLE Product
(
  ProID INT IDENTITY(1,1) NOT NULL,
  ProName NVARCHAR(100) NOT NULL,
  Price MONEY NOT NULL,
  Discount FLOAT NOT NULL,
  Amount INT NOT NULL,
  CategoryID INT NOT NULL,
  BrandID INT NOT NULL,
  Description NVARCHAR(4000) NOT NULL,
  PRIMARY KEY (ProID),
  FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
  FOREIGN KEY (BrandID) REFERENCES Brand(BrandID)
);

CREATE TABLE Orders
(
  OrdID INT IDENTITY(1,1) NOT NULL,
  RequiredDate DATE NOT NULL,
  ShippedDate DATE NOT NULL,
  ShipAdress NVARCHAR(300) NOT NULL,
  ShipCountry NVARCHAR(100) NOT NULL,
  CusID INT NOT NULL,
  EmpID INT NOT NULL,
  FOREIGN KEY (CusID) REFERENCES Customer(CusID),
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
  PRIMARY KEY (OrdID)
);


CREATE TABLE OrderDetail
(
  Quantity INT NOT NULL,
  Price MONEY NOT NULL,
  OrderDate DATE NOT NULL,
  OrdID INT NOT NULL,
  ProID INT NOT NULL,
  FOREIGN KEY (OrdID) REFERENCES Orders(OrdID),
  FOREIGN KEY (ProID) REFERENCES Product(ProID)
);