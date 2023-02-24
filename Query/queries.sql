-- Creating User Table 

CREATE TABLE users (
    user_id NUMBER(10) PRIMARY KEY,
    user_name VARCHAR2(20) NOT NULL,
    password VARCHAR2(20) NOT NULL,
    phone NUMBER(11),
    email VARCHAR2(50),
    address VARCHAR2(50),
    salary NUMBER(10),
    image_id NUMBER(2),
    status VARCHAR2(5) DEFAULT 'N',
    role VARCHAR2(7) DEFAULT 'worker'
);

-- Creating Product Table

CREATE TABLE products (
    product_id NUMBER(10) PRIMARY KEY,
    product_name VARCHAR2(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity NUMBER(7) NOT NULL,
    category VARCHAR2(50) NOT NULL,
    description VARCHAR2(255),
    image_id NUMBER(2)
);

