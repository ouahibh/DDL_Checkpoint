CREATE TABLE Customer {
    Customer_ID NUMBER(10),
    customer_Name VARCHAR2(50),
    customer_tel VARCHAR2(12),
    CONSTRAINT Customer_id_pk PRIMARY KEY (Customer_ID)    
}

CREATE TABLE Product{
    Product_ID NUMBER(10),
    product_name VARCHAR2(50),
    product_category VARCHAR2(50),
    product_price NUMBER(30),
    CONSTRAINT Product_id_pk PRIMARY KEY (Product_ID)
}

CREATE TABLE Orders{
    Customer_ID NUMBER(10),
    Product_ID NUMBER(10),
    orders_quantity NUMBER(20),
    orders_total_amount NUMBER(50),
    FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id)
    FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
}
Alter Table Product add column Categogy VARCHAR2(15);
Alter Table Orders add column OrderDate Date;