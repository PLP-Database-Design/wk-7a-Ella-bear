-- question 1
CREATE TABLE ProductDetail(
    orderId INT,
    customerName VARCHAR(100),
    product VARCHAR(100)
);

INSERT INTO ProductDetail_1NF (orderId, customerName, product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- question 2
CREATE TABLE orders(
    orderId INT PRIMARY KET,
    customerName VARCHAR(100)
);
INSERT INTO orders(orderId, customerName)
    VALUES(101, 'John Doe'),
          (102, 'Jane Smith'),
          (103, 'Emily Clark');
CREATE TABLE products(
    orderId INT,
    products VARCHAR(100),
    Quantity INT,
    PRIMARY KEY(orderId, products),
    FOREIGN KEY(orderId) REFERENCES orders(orderId)
);
INSERT INTO products(orderId, products, Quantity)
    VALUES(101, 'Laptop', 2),
        (101, 'Mouse', 1),
        (102, 'Tablet', 3),
        (102, 'Keyboard', 1),
        (102, 'Mouse', 2),
        (103, 'Phone', 1);