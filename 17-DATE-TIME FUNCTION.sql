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

--NOW()-CURRENT DATE AND TIME--

SELECT NOW()AS CURRENT_DATETIME;


--CURRENT_DATE()--

SELECT CURRENT_DATE AS today_date;

SELECT added_date,current_date,(CURRENT_DATE-added_date) AS day_diff
FROM products;


--EXTRACT()--
SELECT product_name,
EXTRACT(YEAR FROM added_date)AS year_added,
EXTRACT(MONTH FROM added_date)AS month_added,
EXTRACT(DAY FROM added_date)AS day_added
FROM products;


--AGE()--

SELECT product_name, AGE(CURRENT_DATE,added_date)AS age_added
FROM products;

--TO_CHAR()--

SELECT product_name, 
TO_CHAR(added_date,'DD-MM-YY')AS FORMATED_DATE
FROM products;





























