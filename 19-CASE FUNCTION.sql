CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

INSERT INTO products(product_name,category,price,quantity,added_date,discount_rate)VALUES
('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
('Smartphone','Electronics',45000.99,25,'2024-02-25',5.00),
('Headphones','Accessories',2500.55,50,'2024-03-05',15.00),
('Office Chair','Furniture',5500.50,20,'2024-12-01',20.00),
('Desk','Furniture',7000.50,15,'2024-01-28',12.00),
('Monitor','Electronics',12000.50,8,'2024-01-10',8.00),
('Printer','Electronics',9500.50,5,'2024-02-1',7.58),
('Mouse','Accessories',750.50,40,'2024-03-15',10.00),
('Keyboard','Accessories',1250.50,35,'2024-03-18',10.00),
('Tablet','Electronics',30000.50,12,'2024-02-28',5.00);


SELECT * FROM products;


--CASE FUNCTION--
SELECT product_name,price,
CASE 
WHEN price>50000 THEN 'Expensive'
WHEN price>=10000 AND price<=49999 THEN 'Moderate'
ELSE 'Affordable'
END AS prce_category FROM products;

































