CREATE TABLE PRODUCT (
    product int primary key,
    nom_du_produit VARCHAR(50) NOT NULL,
    Prix NUMERIQUE(10, 2) NOT NULL,
    CONSTRAINT CHK_Price CHECK (Prix >= 0)
);

CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE,
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);
CREATE TABLE CUSTOMER (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100),
    CONSTRAINT CHK_Email CHECK (Email LIKE '%@%.%')
    
);

ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);


ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;