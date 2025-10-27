create database task5;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Chennai'),
(4, 'David', 'Pune');

INSERT INTO Orders VALUES
(101, 1, '2025-10-10', 5000.00),
(102, 2, '2025-10-12', 2000.00),
(103, 1, '2025-10-15', 3000.00);

INSERT INTO Orders VALUES
(104, 4, '2025-10-20', 4000.00);

SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_name, o.order_id, o.amount
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

