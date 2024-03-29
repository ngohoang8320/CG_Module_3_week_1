CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
                          cID VARCHAR(20) NOT NULL PRIMARY KEY,
                          cName VARCHAR(20) NOT NULL,
                          cAge INT
);

CREATE TABLE Orders (
                       oID VARCHAR(20) NOT NULL PRIMARY KEY,
                       cID VARCHAR(20) NOT NULL,
                       oDate DATETIME,
                       oTotalPrice FLOAT,
                       FOREIGN KEY (cID) REFERENCES Customer(cID)
);

CREATE TABLE Product (
                         pID VARCHAR(20) NOT NULL PRIMARY KEY,
                         pName VARCHAR(20) NOT NULL,
                         pPrice FLOAT
);

CREATE TABLE OrderDetail (
                             oID VARCHAR(20) NOT NULL,
                             pID VARCHAR(20) NOT NULL,
                             odQTY VARCHAR(20),
                             PRIMARY KEY (oID, pID),
                             FOREIGN KEY (oID) REFERENCES Orders(oID),
                             FOREIGN KEY (pID) REFERENCES Product(pID)
);